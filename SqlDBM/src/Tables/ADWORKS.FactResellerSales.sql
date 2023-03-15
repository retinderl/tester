-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** ADWORKS.FactResellerSales
CREATE TABLE ADWORKS.FactResellerSales
(
 SalesOrderNumber        varchar(20) NOT NULL,
 "Product Key"             number(38,0) NOT NULL,
 OrderDateKey            number(38,0) NOT NULL,
 DueDateKey              number(38,0) NOT NULL,
 ShipDateKey             number(38,0) NOT NULL,
 EmployeeKey             number(38,0) NOT NULL,
 PromotionKey            number(38,0) NOT NULL,
 CurrencyKey             number(38,0) NOT NULL,
 "Sales Order Line Number" number(38,0) NOT NULL,
 RevisionNumber          number(38,0),
 OrderQuantity           number(38,0),
 UnitPrice               number(38,0),
 ExtendedAmount          number(38,0),
 UnitPriceDiscountPct    float,
 DiscountAmount          float,
 ProductStandardCost     number(38,0),
 TotalProductCost        number(38,0),
 SalesAmount             number(38,0),
 TaxAmt                  number(38,0),
 Freight                 number(38,0),
 CarrierTrackingNumber   varchar(25),
 CustomerPONumber        varchar(25),

 CONSTRAINT PK_8 PRIMARY KEY ( SalesOrderNumber ),
 CONSTRAINT FK_FactResellerSales_445 FOREIGN KEY ( "Product Key" ) REFERENCES ADWORKS.DimProduct ( ProductKey ),
 CONSTRAINT FK_FactResellerSales_449 FOREIGN KEY ( EmployeeKey ) REFERENCES ADWORKS."Dim Employee" ( EmployeeKey ),
 CONSTRAINT FK_FactResellerSales_451 FOREIGN KEY ( PromotionKey ) REFERENCES ADWORKS.DimPromotion ( PromotionKey ),
 CONSTRAINT FK_FactResellerSales_453 FOREIGN KEY ( CurrencyKey ) REFERENCES ADWORKS.DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_FactResellerSales_457 FOREIGN KEY ( OrderDateKey ) REFERENCES ADWORKS.DimDate ( DateKey ),
 CONSTRAINT FK_FactResellerSales_459 FOREIGN KEY ( DueDateKey ) REFERENCES ADWORKS.DimDate ( DateKey ),
 CONSTRAINT FK_FactResellerSales_461 FOREIGN KEY ( ShipDateKey ) REFERENCES ADWORKS.DimDate ( DateKey )
)
CLUSTER BY ( SalesOrderNumber )
COMMENT = 'Fact data of Reseller Sales';