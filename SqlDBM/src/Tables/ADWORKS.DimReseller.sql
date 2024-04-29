-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


-- ************************************** ADWORKS.DimReseller
CREATE TABLE ADWORKS.DimReseller
(
 ResellerKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 GeographyKey         number(38,0),
 ResellerAlternateKey varchar(15),
 Phone                varchar(25),
 BusinessType         varchar(20) NOT NULL,
 ResellerName         varchar(50) NOT NULL,
 NumberEmployees      number(38,0),
 OrderFrequency       varchar(1),
 OrderMonth           number(38,0),
 FirstOrderYear       number(38,0),
 LastOrderYear        number(38,0),
 ProductLine          varchar(50),
 AddressLine1         varchar(60),
 AddressLine2         varchar(60),
 AnnualSales          number(38,0),
 BankName             varchar(50),
 MinPaymentType       number(38,0),
 MinPaymentAmount     number(38,0),
 AnnualRevenue        number(38,0),
 YearOpened           number(38,0),

 CONSTRAINT PK_DimReseller PRIMARY KEY ( ResellerKey ),
 CONSTRAINT FK_DimReseller_411 FOREIGN KEY ( GeographyKey ) REFERENCES ADWORKS.DimGeography ( GeographyKey )
);
