-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


-- ************************************** ADWORKS.DimCurrency
CREATE TABLE ADWORKS.DimCurrency
(
 CurrencyKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Currency Identifier',
 CurrencyAlternateKey varchar(3) NOT NULL COMMENT 'Alternate Currency Identifier',
 CurrencyName         varchar(50) NOT NULL COMMENT 'Name of the Currency',

 CONSTRAINT PK_DimCurrency PRIMARY KEY ( CurrencyKey )
)
COMMENT = 'Dimension for Currency Data';
