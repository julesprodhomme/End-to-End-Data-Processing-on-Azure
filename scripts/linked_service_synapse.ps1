
$linkedServiceName = "SynapseWorkspacelinked"
$linkedServiceJson = @"
{
  "name": "$linkedServiceName",
  "properties": {
    "type": "AzureSynapse",
    "typeProperties": {
      "workspaceEndpoint": "https://synapseedu2.dev.azuresynapse.net",
      "authenticationType": "ManagedIdentity"
    }
  }
}
"@
New-AzDataFactoryV2LinkedService -ResourceGroupName "rg-edu2" -DataFactoryName "adf-edu2" -Definition $linkedServiceJson
