
$triggerName = "DataPipelineCSVtoParquet"
$triggerJson = @"
{
  "name": "$triggerName",
  "properties": {
    "type": "BlobTrigger",
    "typeProperties": {
      "folderPath": "EdStatsData.csv",
      "blobPathBeginsWith": "abfss://rawdata@datalakeedu2.dfs.core.windows.net/",
      "dataFactory": "adf-edu2",
      "pipelineName": "DataPipelineCSVtoParquet"
    }
  }
}
"@
New-AzDataFactoryV2Trigger -ResourceGroupName "rg-edu2" -DataFactoryName "adf-edu2" -Definition $triggerJson
