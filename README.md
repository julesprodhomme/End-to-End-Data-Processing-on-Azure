# End-to-End Data Processing on Azure  

## Project Overview  
This project aims to analyze global internet penetration and economic impact using World Bank data. The goal is to identify high-potential markets for digital infrastructure investment by evaluating internet access, GDP, and demographic trends.  

To achieve this, the project follows a fully automated **end-to-end data pipeline** that processes raw CSV files, transforms them into optimized Parquet format, and enables advanced analytics and visualizations in Power BI.  

## Full Data Processing Workflow  
1. **Data Ingestion:**  
   - Raw CSV files are stored in **Azure Data Lake Storage Gen2**.  
   - A trigger in **Azure Data Factory** detects new files and starts the pipeline.  
2. **Data Transformation & Optimization:**  
   - A **Synapse Spark Pool** processes and cleans the data.  
   - Missing values, outliers, and duplicates are handled.  
   - The cleaned data is converted into **Parquet format**, reducing storage size and improving performance.  
3. **Data Validation:**  
   - The pipeline ensures that the transformed data is correctly stored.  
   - A validation step checks the existence and integrity of Parquet files.  
4. **Data Modeling in Power BI:**  
   - **Star schema** with fact and dimension tables for optimized queries.  
   - Custom **DAX measures** for advanced calculations.  
   - Additional transformations using **Power Query and M Language**.  
5. **Visualization & Insights:**  
   - Interactive **Power BI dashboards** with geographical and economic analysis.  
   - Analysis of internet access trends, GDP correlations, and demographic insights.  

## Data Pipeline: CSV to Parquet  
The core pipeline automates the entire ETL process:  

- **Trigger:** Detects new CSV files in the Data Lake.  
- **Data Processing:** Spark in Synapse cleans, normalizes, and optimizes data.  
- **Format Conversion:** Converts raw CSV to **compressed Parquet**, improving performance and reducing storage.  
- **Validation:** Ensures processed data is correctly stored and available for analysis.  

## Tools and Technologies  
- **Azure Data Factory (ADF)** – Orchestrates automated data pipelines.  
- **Azure Synapse Analytics** – Processes data efficiently using **Apache Spark**.  
- **Azure Data Lake Storage Gen2** – Stores both raw and processed data.  
- **Power BI** – Builds dashboards, visualizations, and interactive reports.  
- **Power Query & M Language** – Cleans and transforms data before modeling.  
- **DAX (Data Analysis Expressions)** – Creates custom calculations and measures.  
- **PowerShell** – Automates deployment and resource management.  

## Why Azure? Solving Key Challenges  
Azure provided a scalable, cost-effective, and high-performance solution compared to on-premise alternatives:  

- **Large Dataset Handling:**  
  - Initial CSV files exceeded **1GB**, leading to slow processing.  
  - Converting to **Parquet reduced file size by ~75%** and improved query speeds by **3x**.  
- **Processing Performance:**  
  - On-prem solutions required **30+ minutes** for data transformation.  
  - **Azure Synapse Spark Pool** reduced this to **under 10 minutes** with parallel processing.  
- **Scalability & Cost Efficiency:**  
  - Azure’s **pay-as-you-go model** scaled resources dynamically, cutting costs by **~40%** compared to fixed on-prem infrastructure.  
- **Automation & Real-Time Data Updates:**  
  - **Azure Data Factory** pipelines ensured end-to-end automation with **zero manual intervention**.  
- **Security & Compliance:**  
  - **Role-Based Access Control (RBAC)** and encryption ensured secure data handling without additional infrastructure overhead.  

## Conclusion  
This project demonstrates a **cloud-native, end-to-end data pipeline** that efficiently processes large datasets, ensures high-performance analytics, and provides actionable insights through Power BI. By leveraging **Azure’s scalability, automation, and advanced processing capabilities**, the solution delivers a **fully optimized** data-driven decision-making framework.  
