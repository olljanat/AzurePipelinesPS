#
# Module manifest for module 'PSGet_AzurePipelinesPS'
#
# Generated by: Dejulia489
#
# Generated on: 4.2.2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'AzurePipelinesPS.psm1'

# Version number of this module.
ModuleVersion = '1.0.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '2aac6b54-85e8-4323-8dce-1ce8d86e1f6f'

# Author of this module
Author = 'Dejulia489'

# Company or vendor of this module
CompanyName = 'https://github.com/Dejulia489/AzurePipelinesPS'

# Copyright statement for this module
Copyright = '(c) 2018 Dejulia489. All rights reserved.'

# Description of the functionality provided by this module
Description = 'A PowerShell module that makes interfacing with Azure Pipelines a little easier'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'System.IO.Compression.FileSystem.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-APDeploymentGroup', 'Add-APField', 'Add-APGroupMembership', 
               'Add-APLogFile', 'Add-APPool', 'Add-APQueue', 'Add-APVariableGroup', 
               'Add-APWidget', 'Copy-APDashboard', 'Copy-APNode', 'Copy-APQuery', 
               'Copy-APTeam', 'Find-APPSModule', 'Format-APTemplate', 
               'Get-APAccessControlListList', 'Get-APAgent', 'Get-APAgentList', 
               'Get-APApiVersion', 'Get-APApprovalList', 'Get-APBoard', 
               'Get-APBoardList', 'Get-APBuild', 'Get-APBuildArtifactList', 
               'Get-APBuildDefinition', 'Get-APBuildDefinitionList', 
               'Get-APBuildLease', 'Get-APBuildLeaseList', 'Get-APBuildList', 
               'Get-APBuildTimeline', 'Get-APDashboard', 'Get-APDashboardList', 
               'Get-APDeletedRepository', 'Get-APDeploymentGroup', 
               'Get-APDeploymentGroupList', 'Get-APDeploymentList', 
               'Get-APDescriptor', 'Get-APEnvironment', 'Get-APEnvironmentList', 
               'Get-APFeed', 'Get-APFeedList', 'Get-APField', 'Get-APFieldList', 
               'Get-APGitCommitList', 'Get-APGitItem', 'Get-APGitPullRequestList', 
               'Get-APGitRefList', 'Get-APGroup', 'Get-APGroupEntitlementsList', 
               'Get-APGroupList', 'Get-APGroupMembership', 
               'Get-APGroupMembershipList', 'Get-APInstalledExtension', 
               'Get-APInstalledExtensionData', 'Get-APInstalledExtensionDocument', 
               'Get-APInstalledExtensionDocumentList', 
               'Get-APInstalledExtensionList', 'Get-APList', 'Get-APListList', 
               'Get-APNode', 'Get-APNodeList', 'Get-APNotificationSubscription', 
               'Get-APNotificationSubscriptionList', 
               'Get-APNotificationSubscriptionTemplateList', 'Get-APOperation', 
               'Get-APPackage', 'Get-APPackageList', 'Get-APPermissionReport', 
               'Get-APPermissionReportList', 'Get-APPersonalAccessTokenList', 
               'Get-APPipeline', 'Get-APPipelineApproval', 
               'Get-APPipelineApprovalList', 'Get-APPipelineList', 
               'Get-APPipelineLog', 'Get-APPipelineLogList', 
               'Get-APPipelinePendingApprovalList', 'Get-APPipelineRun', 
               'Get-APPipelineRunList', 'Get-APPlan', 'Get-APPlanList', 
               'Get-APPolicyConfiguration', 'Get-APPolicyConfigurationList', 
               'Get-APPolicyEvaluation', 'Get-APPolicyEvaluationList', 
               'Get-APPolicyRevision', 'Get-APPolicyRevisionList', 
               'Get-APPolicyType', 'Get-APPolicyTypeList', 'Get-APPool', 
               'Get-APPoolList', 'Get-APProcessList', 'Get-APProject', 
               'Get-APProjectList', 'Get-APQuery', 'Get-APQueryList', 'Get-APQueue', 
               'Get-APRecycleBinRepository', 'Get-APRelease', 
               'Get-APReleaseDefinition', 'Get-APReleaseDefinitionList', 
               'Get-APReleaseEnvironment', 'Get-APReleaseList', 
               'Get-APReleaseTaskLog', 'Get-APRepository', 'Get-APRepositoryList', 
               'Get-APRootNodeList', 'Get-APSecureFileList', 
               'Get-APSecurityNamespaceList', 'Get-APServiceEndpoint', 
               'Get-APServiceEndpointExecutionHistoryList', 
               'Get-APServiceEndpointList', 'Get-APServiceEndpointName', 
               'Get-APServiceEndpointTypeList', 'Get-APSession', 
               'Get-APSourceProviderList', 'Get-APStorageKey', 'Get-APTarget', 
               'Get-APTargetList', 'Get-APTaskGroupList', 'Get-APTeam', 
               'Get-APTeamFieldValues', 'Get-APTeamList', 'Get-APTeamListAll', 
               'Get-APTeamMembers', 'Get-APTeamSettings', 'Get-APTestPlan', 
               'Get-APTestPlanList', 'Get-APTestResult', 'Get-APTestResultList', 
               'Get-APTestRun', 'Get-APTestRunList', 'Get-APTestRunStatistics', 
               'Get-APTestSuiteList', 'Get-APTestSuiteTestCase', 'Get-APUser', 
               'Get-APUserEntitlementList', 'Get-APUserList', 'Get-APVariableGroup', 
               'Get-APVariableGroupList', 'Get-APWidget', 'Get-APWidgetList', 
               'Get-APWorkItem', 'Get-APWorkItemList', 
               'Get-APWorkItemTypeCategoriesList', 'Get-APWorkItemTypeList', 
               'Install-APAgent', 'Install-APPSModule', 
               'Invoke-APNugetPackageDownload', 'Invoke-APPipeline', 
               'Invoke-APPolicyEvaluation', 'Invoke-APQuery', 'Invoke-APRestMethod', 
               'Invoke-APServiceEndpointProxyRequest', 'Invoke-APWebRequest', 
               'New-APBuild', 'New-APDashboard', 'New-APEnvironment', 
               'New-APEnvironmentApproval', 'New-APFeed', 'New-APGitBranch', 
               'New-APGitPullRequest', 'New-APGroup', 'New-APGroupMembershipReport', 
               'New-APInstalledExtensionDocument', 'New-APNode', 
               'New-APNotificationSubscription', 'New-APPermissionReport', 
               'New-APPipeline', 'New-APPolicyConfiguration', 'New-APProject', 
               'New-APQuery', 'New-APRelease', 'New-APRepository', 'New-APSecureFile', 
               'New-APServiceEndpoint', 'New-APSession', 'New-APTeam', 
               'Publish-APBuildDefinition', 'Publish-APPipelineDefinition', 
               'Publish-APReleaseDefinition', 'Register-APPSRepository', 
               'Remove-APAgent', 'Remove-APBuild', 'Remove-APBuildDefinition', 
               'Remove-APBuildLease', 'Remove-APDashboard', 
               'Remove-APDeploymentGroup', 'Remove-APEnvironment', 'Remove-APFeed', 
               'Remove-APGitFile', 'Remove-APGroupMembership', 
               'Remove-APInstalledExtensionDocument', 
               'Remove-APNotificationSubscription', 'Remove-APNugetPackageVersion', 
               'Remove-APNugetPackageVersionFromRecycleBin', 'Remove-APPlan', 
               'Remove-APPolicyConfiguration', 'Remove-APPool', 'Remove-APProject', 
               'Remove-APQuery', 'Remove-APRelease', 'Remove-APReleaseDefinition', 
               'Remove-APRepository', 'Remove-APSecureFile', 
               'Remove-APServiceEndpoint', 'Remove-APSession', 'Remove-APTarget', 
               'Remove-APTeam', 'Remove-APTestSuite', 'Remove-APVariableGroup', 
               'Save-APPermissionReport', 'Save-APSession', 
               'Set-APAccessControlEntries', 'Set-APBuildNumber', 
               'Set-APReleaseName', 'Set-APTaskResult', 'Set-APVariable', 
               'Test-APPipelineYaml', 'Update-APApproval', 'Update-APBuild', 
               'Update-APBuildDefinition', 'Update-APDeploymentGroup', 
               'Update-APField', 'Update-APInstalledExtension', 
               'Update-APInstalledExtensionDocument', 'Update-APList', 
               'Update-APNode', 'Update-APPipelineApproval', 
               'Update-APPolicyConfiguration', 'Update-APRelease', 
               'Update-APReleaseDefinition', 'Update-APReleaseEnvironment', 
               'Update-APReleaseResource', 'Update-APReleaseSummary', 
               'Update-APServiceEndpoint', 
               'Update-APServiceEndpointPipelinePermission', 'Update-APSession', 
               'Update-APTarget', 'Update-APTeam', 'Update-APTeamFieldValues', 
               'Update-APTeamSettings', 'Update-APVariableGroup', 
               'Update-APWorkItem', 'Wait-APBuild', 'Wait-APOperation', 
               'Wait-APRelease', 'Write-APLogMessage'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'AzureDevOps','Pipelines','VSTS','TFS','DevOps','Artifacts','Build','Release','CI','CD','Azure','Repos','Boards','ADO'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/Dejulia489/AzurePipelinesPS/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Dejulia489/AzurePipelinesPS'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/Dejulia489/AzurePipelinesPS/releases'

        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable
    
 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

