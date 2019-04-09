﻿Function Get-APSession
{
    <#
    .SYNOPSIS

    Returns Azure Pipelines PS session data.

    .DESCRIPTION

    Returns Azure Pipelines PS session data that has been stored in the users local application data. 
    Use Save-APSession to persist the session data to disk.
    The sensetive data is returned encrypted.

    .PARAMETER Id
    
    Session id.

    .PARAMETER SessionName
    
    The friendly name of the session.

    .PARAMETER Path
    
    The path where session data will be stored, defaults to $Script:ModuleDataPath.

    .LINK

    Save-APSession
    Remove-APSession

    .INPUTS

    None, does not support pipeline.

    .OUTPUTS

    PSObject. Get-APSession returns a PSObject that contains the following:
        Instance
        Collection
        PersonalAccessToken

    .EXAMPLE

    Returns all AP sessions saved or in memory.

    Get-APSession

    .EXAMPLE

    Returns AP session with the session name of 'myFirstSession'.

    Get-APSession -SessionName 'myFirstSession'

    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(ValueFromPipeline,
            ValueFromPipelineByPropertyName)]
        [string]
        $SessionName,

        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline,
            ValueFromPipelineByPropertyName)]
        [int]
        $Id,

        [Parameter()]
        [string]
        $Path = $Script:ModuleDataPath
    )
    Process
    {
        # Process memory sessions 
        $_sessions = @()
        If ($null -ne $Global:_APSessions)
        {
            Foreach ($_memSession in $Global:_APSessions)
            {
                $_sessions += $_memSession
            }
        }
        
        # Process saved sessions
        If (Test-Path $Path)
        {
            $data = Get-Content -Path $Path -Raw | ConvertFrom-Json           
            Foreach ($_data in $data.SessionData)
            {
                $_object = New-Object -TypeName PSCustomObject -Property @{
                    Id          = $_data.Id
                    Instance    = $_data.Instance
                    Collection  = $_data.Collection
                    Project     = $_data.Project
                    SessionName = $_data.SessionName
                    Version     = $_data.Version
                    ApiVersion  = $_data.ApiVersion
                    Saved       = $_data.Saved
                }
                If ($_data.PersonalAccessToken)
                {
                    $_object | Add-Member -NotePropertyName 'PersonalAccessToken' -NotePropertyValue ($_data.PersonalAccessToken | ConvertTo-SecureString)
                }
                If ($_data.Credential)
                {
                    $_psCredentialObject = [pscredential]::new($_data.Credential.Username, ($_data.Credential.Password | ConvertTo-SecureString))
                    $_object | Add-Member -NotePropertyName 'Credential' -NotePropertyValue $_psCredentialObject
                }
                If ($_data.Proxy)
                {
                    $_object | Add-Member -NotePropertyName 'Proxy' -NotePropertyValue $_data.Proxy
                }
                If ($_data.ProxyCredential)
                {
                    $_psProxyCredentialObject = [pscredential]::new($_data.ProxyCredential.Username, ($_data.ProxyCredential.Password | ConvertTo-SecureString))
                    $_object | Add-Member -NotePropertyName 'ProxyCredential' -NotePropertyValue $_psProxyCredentialObject
                }
                $_sessions += $_object
            }
        }
        If ($PSCmdlet.ParameterSetName -eq 'ById')
        {
            $_sessions = $_sessions | Where-Object { $PSItem.Id -eq $Id }
        }
        If ($SessionName)
        {
            $_sessions = $_sessions | Where-Object { $PSItem.SessionName -eq $SessionName }
        }
        Return $_sessions
    }
}