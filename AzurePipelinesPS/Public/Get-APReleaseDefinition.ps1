function Get-APReleaseDefinition
{
    <#
    .SYNOPSIS

    Returns Azure Pipeline release definition(s).

    .DESCRIPTION

    Returns Azure Pipeline release definitions(s) based on a filter query, if one is not provided the default will return the top 50 releases for the project provided.

    .PARAMETER Instance
    
    The Team Services account or TFS server.
    
    .PARAMETER Collection
    
    The value for collection should be DefaultCollection for both Team Services and TFS.

    .PARAMETER Project
    
    Project ID or project name.
    
    .PARAMETER SearchText
    
    Releases with names starting with searchText.

    .PARAMETER Expand
    
    The property that should be expanded in the list of releases.

    .PARAMETER ArtifactType
    
    Release definitions with given artifactType will be returned. Values can be Build, Jenkins, GitHub, Nuget, Team Build (external), ExternalTFSBuild, Git, TFVC, ExternalTfsXamlBuild.

    .PARAMETER Top
    
    Number of releases to get. Default is 50.

    .PARAMETER ContinuationToken
    
    Gets the releases after the continuation token provided.

    .PARAMETER QueryOrder
    
    Gets the results in the defined order of created date for releases. Default is descending.

    .PARAMETER Path
    
    Gets the release definitions under the specified path.
    
    .PARAMETER IsExactNameMatch
    
    Set to 'true' to get the release definitions with exact match as specified in searchText. Default is 'false'.

    .PARAMETER TagFilter
    
    A comma-delimited list of tags. Only releases with these tags will be returned.

    .PARAMETER PropertyFilters
    
    A comma-delimited list of extended properties to retrieve.

    .PARAMETER DefinitionIdFilter
    
    A comma-delimited list of release definitions to retrieve.

    .PARAMETER IsDeleted
    
    Gets the soft deleted releases, if true.

    .PARAMETER ApiVersion
    
    Version of the api to use.

    .PARAMETER Credential

    Specifies a user account that has permission to send the request.

    .INPUTS
    

    .OUTPUTS

    PSObject, Azure Pipelines release definition(s)

    .EXAMPLE

    C:\PS> Get-APReleaseDefinition -Instance 'https://myproject.visualstudio.com' -Collection 'DefaultCollection' -Project 'myFirstProject'

    .LINK

    https://docs.microsoft.com/en-us/rest/api/vsts/release/releases/list?view=vsts-rest-5.0
    #>
    [CmdletBinding(DefaultParameterSetName = 'ByList')]
    Param
    (
        [Parameter()]
        [uri]
        $Instance = (Get-APModuleData).Instance,

        [Parameter()]
        [string]
        $Collection = (Get-APModuleData).Collection,

        [Parameter(Mandatory)]
        [string]
        $Project,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $SearchText,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        [ValidateSet('approvals', 'artifacts', 'environments', 'manualInterventions', 'none', 'tags', 'variables')]
        $Expand,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $ArtifactType,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $Top,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $ContinuationToken,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $QueryOrder,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $Path,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $IsExactNameMatch,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $TagFilter,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $PropertyFilters,

        [Parameter(ParameterSetName = 'ByQuery')]
        [string]
        $DefinitionIdFilter,

        [Parameter(ParameterSetName = 'ByQuery')]
        [bool]
        $IsDeleted,

        [Parameter()]
        [string]
        $ApiVersion = (Get-APApiVersion), 

        [Parameter()]
        [pscredential]
        $Credential
    )

    begin
    {
    }
    
    process
    {
        $nonQueryParams = @(
            'Instance',
            'Collection',
            'Project',
            'ApiVersion',
            'Credential'
        )
        $apiEndpoint = Get-APApiEndpoint -ApiType 'release-definitions'
        $setAPUriSplat = @{
            Collection  = $Collection
            Instance    = $Instance
            Project     = $Project
            ApiVersion  = $ApiVersion
            ApiEndpoint = $apiEndpoint
        }
        If ($PSCmdlet.ParameterSetName -eq 'ByQuery')
        {
            $queryParams = Foreach ($key in $PSBoundParameters.Keys)
            {
                If($nonQueryParams -contains $key)
                {
                    Continue
                }
                ElseIf($key -eq 'Top')
                {
                    "`$$key=$($PSBoundParameters.$key)"
                }
                Else
                {
                    "$key=$($PSBoundParameters.$key)"
                }
            }
            $setAPUriSplat.Query = ($queryParams -join '&').ToLower()
        }
        [uri] $uri = Set-APUri @setAPUriSplat
        $invokeAPRestMethodSplat = @{
            Method     = 'GET'
            Uri        = $uri
            Credential = $Credential
        }
        Invoke-APRestMethod @invokeAPRestMethodSplat | Select-Object -ExpandProperty value
    }
    
    end
    {
    }
}