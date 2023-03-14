-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** ADWORKS.FactCurrencyRate
CREATE TABLE ADWORKS.FactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL,
 DateKey      number(38,0) NOT NULL,
 AverageRate  float NOT NULL,
 EndOfDayRate float NOT NULL,

 CONSTRAINT FK_FactCurrencyRate_413 FOREIGN KEY ( CurrencyKey ) REFERENCES ADWORKS.DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_FactCurrencyRate_415 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey )
);
