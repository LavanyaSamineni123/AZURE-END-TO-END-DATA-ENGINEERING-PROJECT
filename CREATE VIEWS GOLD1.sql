-- CREATE VIEW FOR CALENDAR
DROP VIEW IF EXISTS gold1.calendardata;
GO
CREATE VIEW gold1.calendardata AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR CUSTOMERS
DROP VIEW IF EXISTS gold1.customersadv;
GO
CREATE VIEW gold1.customersadv AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR PRODUCT CATEGORIES
DROP VIEW IF EXISTS gold1.product_categories1;
GO
CREATE VIEW gold1.product_categories1 AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR PRODUCT SUBCATEGORIES
DROP VIEW IF EXISTS gold1.product_sub_categories1;
GO
CREATE VIEW gold1.product_sub_categories1 AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR PRODUCTS
DROP VIEW IF EXISTS gold1.products1;
GO
CREATE VIEW gold1.products1 AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR RETURNS
DROP VIEW IF EXISTS gold1.pro_returns1;
GO
CREATE VIEW gold1.pro_returns1 AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR SALES
DROP VIEW IF EXISTS gold1.sales1;
GO
CREATE VIEW gold1.sales1 AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO

-- CREATE VIEW FOR TERRITORIES
DROP VIEW IF EXISTS gold1.territories1;
GO
CREATE VIEW gold1.territories1 AS
SELECT * FROM
    OPENROWSET(
        BULK 'https://adstoragedatalake1.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT='PARQUET'
    ) AS QUERY1;
GO
