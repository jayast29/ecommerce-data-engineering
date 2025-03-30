SELECT * 
FROM OPENROWSET
    (
        BULK 'https://jayecommadls.blob.core.windows.net/silver/',
        FORMAT = 'PARQUET'
    ) AS Q;

CREATE SCHEMA gold;

CREATE VIEW gold.final 
AS 
SELECT
     *
FROM
    OPENROWSET(
        BULK 'https://jayecommadls.blob.core.windows.net/silver/',
        FORMAT = 'PARQUET'
    ) AS result1;

SELECT * FROM gold.final;

--CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'password';
--CREATE DATABASE SCOPED CREDENTIAL jayadmin WITH IDENTITY = 'Managed Identity';

--SELECT * FROM sys.database_credentials

CREATE EXTERNAL FILE FORMAT extfileformat WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

CREATE EXTERNAL DATA SOURCE goldlayer WITH (
    LOCATION = 'https://jayecommadls.blob.core.windows.net/gold/',
    CREDENTIAL = jayadmin
);

CREATE EXTERNAL TABLE gold.finaltable WITH (
        LOCATION = 'Serving',
        DATA_SOURCE = goldlayer,
        FILE_FORMAT = extfileformat
) AS
SELECT * FROM gold.final;
