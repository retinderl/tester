-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


-- ************************************** ADWORKS.DimProduct
CREATE TABLE ADWORKS.DimProduct
(
 ProductKey            number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ProductAlternateKey   varchar(25),
 ProductSubcategoryKey number(38,0),
 WeightUnitMeasureCode varchar(3),
 SizeUnitMeasureCode   varchar(3),
 EnglishProductName    varchar(50) NOT NULL,
 SpanishProductName    varchar(50),
 FrenchProductName     varchar(50),
 StandardCost          number(38,0),
 FinishedGoodsFlag     number(38,0) NOT NULL,
 Color                 varchar(15) NOT NULL,
 SafetyStockLevel      number(38,0),
 ReorderPoint          number(38,0),
 ListPrice             number(38,0),
 Size                  varchar(50),
 SizeRange             varchar(50),
 Weight                float,
 DaysToManufacture     number(38,0),
 ProductLine           varchar(2),
 DealerPrice           number(38,0),
 Class                 varchar(2),
 Style                 varchar(2),
 ModelName             varchar(50),
 EnglishDescription    varchar(400),
 FrenchDescription     varchar(400),
 ChineseDescription    varchar(400),
 ArabicDescription     varchar(400),
 HebrewDescription     varchar(400),
 ThaiDescription       varchar(400),
 GermanDescription     varchar(400),
 JapaneseDescription   varchar(400),
 TurkishDescription    varchar(400),
 Status                varchar(7),

 CONSTRAINT PK_DimProduct PRIMARY KEY ( ProductKey ),
 CONSTRAINT FK_DimProduct_407 FOREIGN KEY ( ProductSubcategoryKey ) REFERENCES ADWORKS.DimProductSubcategory ( ProductSubcategoryKey )
);
