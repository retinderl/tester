-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v45 by retinder.labana@sqldbm.com *


-- ************************************** EDW.sqldbm_FactResellerSales
CREATE TABLE EDW.sqldbm_FactResellerSales
(
 ProductKey            number(38,0) NOT NULL,
 OrderDateKey          number(38,0) NOT NULL,
 DueDateKey            number(38,0) NOT NULL,
 ShipDateKey           number(38,0) NOT NULL,
 ResellerKey           number(38,0) NOT NULL,
 PromotionKey          number(38,0) NOT NULL,
 CurrencyKey           number(38,0) NOT NULL,
 SalesTerritoryKey     number(38,0) NOT NULL,
 SalesOrderNumber      varchar(20) NOT NULL,
 SalesOrderLineNumber  number(38,0) NOT NULL,
 RevisionNumber        number(38,0),
 OrderQuantity         number(38,0),
 UnitPrice             number(38,0),
 ExtendedAmount        number(38,0),
 UnitPriceDiscountPct  float,
 DiscountAmount        float,
 ProductStandardCost   number(38,0),
 TotalProductCost      number(38,0),
 SalesAmount           number(38,0),
 TaxAmt                number(38,0),
 Freight               number(38,0),
 CarrierTrackingNumber varchar(25),
 CustomerPONumber      varchar(25),

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ProductKey ) REFERENCES EDW.sqldbm_DimProduct ( ProductKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ResellerKey ) REFERENCES EDW.sqldbm_DimReseller ( ResellerKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( PromotionKey ) REFERENCES EDW.sqldbm_DimPromotion ( PromotionKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( SalesTerritoryKey ) REFERENCES EDW.sqldbm_DimSalesTerritory ( SalesTerritoryKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( OrderDateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DueDateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ShipDateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
)
COMMENT = 'Fact data of Reseller Sales';
