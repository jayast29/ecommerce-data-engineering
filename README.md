## E-Commerce-Data-Engineering

### 📌 Project Overview

This end-to-end data engineering project focuses on processing and analyzing the E-Commerce Public Dataset by Olist, which includes over 100,000 orders placed between 2016 and 2018. The project simulates a real-world analytics pipeline using the Azure data ecosystem, including Azure Data Lake Storage, Azure Data Factory, Databricks, and Synapse Analytics to transform raw transactional data into meaningful business insights. It also integrates Azure Key Vault to securely manage credentials. The final insights are delivered through an interactive Power BI dashboard, built on top of the curated gold layer.

---

### 🛠️ Tools & Technologies Used:
<p align="left"> <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python"/> <img src="https://img.shields.io/badge/Microsoft%20Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white" alt="Microsoft Azure"/> <img src="https://img.shields.io/badge/Spark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white" alt="Apache Spark"/> <img src="https://img.shields.io/badge/Databricks-EF3E3E?style=for-the-badge&logo=databricks&logoColor=white" alt="Databricks"/> <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI"/> <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/> <img src="https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white" alt="MongoDB"/> </p>

---

### 📊 Architecture & Workflow
![Project Architecture](project_architecture.png)

---

### 📑 Dataset Description

[![Kaggle Dataset](https://img.shields.io/badge/Dataset-Kaggle-blue?style=for-the-badge&logo=kaggle&logoColor=white)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset, provided by Olist, contains information about 100,000 orders from 2016 to 2018, made at various Brazilian marketplaces. It includes several features, such as:
- **Order Details**: Order status, payment, and delivery performance.
- **Customer Information**: Customer location and demographics.
- **Product Information**: Product details, category, and description.
- **Reviews**: Customer reviews, and ratings.

---

### 🚀 Engineering Process

1. **Data Sources**: 
   - **CSV Files**: The main dataset, including orders, products, customers, and reviews, was ingested from GitHub repository.
   - **MySQL**: CSV file was loaded into a MySQL database to manage the relational data.
   - **MongoDB**: A MongoDB instance was used to replace Brazilian product category names with English equivalents for easier analysis.

2. **Data Ingestion to Bronze Layer**: 
   - The raw data from the CSV files was ingested into the **Bronze Layer** in Azure Data Lake Storage (ADLS) using Azure Data Factory (ADF).
   - **Data Sources**: GitHub, MySQL Database.

3. **Data Transformation in Databricks**:
   - Data was cleaned and transformed using Databricks notebooks.
   - Key transformations included converting category names to English by ingesting data from MongoDB, removing duplicates, and standardizing date columns for consistency.

4. **Data Ingestion to Silver Layer**:
   - The transformed data was moved to the **Silver Layer** in ADLS for further processing.

5. **Gold Layer in Synapse Analytics**:
   - The final, cleaned, and transformed data was moved to the **Gold Layer** with Synapse Analytics, making it available for serving.
   - SQL queries were written in Synapse Analytics to aggregate, filter, and prepare the data for reporting in Power BI.

---

### 🔎 Dashboard

![Power BI Dashboard](https://github.com/jayast29/olist-ecommerce-analytics/blob/main/images/powerbi.png?raw=true)

---
