-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v43 by retinder.labana@sqldbm.com *


-- ************************************** EDW.sqldbm_DimSalesTerritory
CREATE TABLE EDW.sqldbm_DimSalesTerritory
(
 SalesTerritoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Sales Territory identifier',
 SalesTerritoryAlternateKey number(38,0) COMMENT 'Sales Territory Alternate Key',
 SalesTerritoryRegion       varchar(50) NOT NULL COMMENT 'Sales Territory Region',
 SalesTerritoryCountry      varchar(50) NOT NULL COMMENT 'Sales Territory Country',
 SalesTerritoryGroup        varchar(50) COMMENT 'Sales Territory Group',

 CONSTRAINT PK_DimSalesTerritory_sqldbm_DimSalesTerritory PRIMARY KEY ( SalesTerritoryKey )
)
COMMENT = 'Sales Territory data';
