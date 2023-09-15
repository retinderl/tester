-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v45 by retinder.labana@sqldbm.com *


-- ************************************** EDW.sqldbm_FactCurrencyRate
CREATE TABLE EDW.sqldbm_FactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL COMMENT 'Currency Identifier',
 DateKey      number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 AverageRate  float NOT NULL COMMENT 'Average currency rate',
 EndOfDayRate float NOT NULL COMMENT 'The daily closing rate',

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
);