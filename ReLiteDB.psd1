@{
    RootModule = 'ReliteDB.psm1'
    ModuleVersion = '0.0.1'
    CompatiblePSEditions = @('Core', 'Desktop')
    GUID = 'f40df9ce-7a64-46fa-bab3-dd870cbfc091'

    Author = 'David Midlo'
    CompanyName = 'ReLite Systems'
    Copyright = '(c) 2025 David Midlo. Licensed under the MIT License.'

    Description = 'A PowerShell PSProvider that exposes version-controlled document access to LiteDB collections using an append-only, hash-based object lineage model.'

    PowerShellVersion = '7.0'
    DotNetFrameworkVersion = '4.7.2'
    ClrVersion = '4.0'

    RequiredAssemblies = @('LiteDB.dll')

    FunctionsToExport = @()         # Filled dynamically via .psm1
    CmdletsToExport   = @()
    VariablesToExport = '*'
    AliasesToExport   = @()
    DscResourcesToExport = @()
    ModuleList = @()

    PrivateData = @{
        PSData = @{
            Tags = @(
                'PowerShell', 'LiteDB', 'PSProvider', 'Hashing', 'Immutable',
                'DocumentStore', 'VersionControl', 'Staging', 'Compaction', 'CRD'
            )
            LicenseUri = 'https://opensource.org/licenses/MIT'
            ProjectUri = 'https://github.com/davidmidlo/ReliteDB'
            IconUri = 'https://raw.githubusercontent.com/davidmidlo/ReliteDB/main/assets/icon.png'  # optional
            ReleaseNotes = @'
Initial preview release of ReLiteDB:

- Append-only data storage model
- ContentDigest-based deduplication with SHA-256
- BundleId and VersionId lineage tracking
- Full support for Staging (Temp), RecycleBin, Commit operations
- LiteDbAppendOnlyCollection & LiteDbAppendOnlyDocument abstractions
- PowerShell PSProvider for filesystem-style access
'@
            Prerelease = ''
            RequireLicenseAcceptance = $false
            ExternalModuleDependencies = @()
        }
    }

    HelpInfoURI = 'https://github.com/davidmidlo/ReliteDB/wiki'
    DefaultCommandPrefix = 'Relite'
}
