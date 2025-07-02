CREATE DATABASE SCOPED CREDENTIAL cred_lav
WITH
    IDENTITY='Managed Identity'

 CREATE EXTERNAL DATA SOURCE source_silverlayer
 WITH(
    LOCATION='https://adstoragedatalake1.blob.core.windows.net/silver',
    CREDENTIAL=cred_lav
 )

 CREATE EXTERNAL DATA SOURCE source_goldlayer
 WITH(
    LOCATION='https://adstoragedatalake1.blob.core.windows.net/gold',
    CREDENTIAL=cred_lav
 )

CREATE EXTERNAL FILE FORMAT format_parquet1
WITH(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'

)

----create external tables extsales

CREATE EXTERNAL TABLE gold1.extsales
WITH(
    LOCATION='extsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet1
)
AS
SELECT*FROM gold1.sales1


select*from gold1.extsales