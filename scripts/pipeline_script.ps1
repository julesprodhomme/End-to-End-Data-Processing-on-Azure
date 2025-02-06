
$pipelineName = "DataPipelineCSVtoParquet"
$pipelineJson = @"
{
   "name": "$pipelineName",
   "properties": {
      "activities": [
         {
            "name": "Notebook Activity",
            "type": "SynapseNotebook",
            "linkedServiceName": { 
               "referenceName": "SynapseWorkspacelinked", 
               "type": "LinkedServiceReference" 
            },
            "typeProperties": {
               "notebook": { 
                  "referenceName": "data_transf_parquet", 
                  "type": "NotebookReference" 
               },
               "parameters": { 
                  "input": "abfss://rawdata@datalakeedu2.dfs.core.windows.net/EdStatsData.csv" 
               }
            }
         },
         {
            "name": "GetMetadata Activity",
            "type": "GetMetadata",
            "linkedServiceName": { 
               "referenceName": "MyDataLakeLinkedService", 
               "type": "LinkedServiceReference" 
            },
            "typeProperties": {
               "dataset": { 
                  "referenceName": "ParquetFileDataset", 
                  "type": "DatasetReference" 
               },
               "fieldList": ["childItems"] 
            }
         }
      ]
   }
}
"@
New-AzDataFactoryV2Pipeline -ResourceGroupName "rg-edu2" -DataFactoryName "adf-edu2" -Definition $pipelineJson
