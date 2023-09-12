-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v43 by retinder.labana@sqldbm.com *


-- ************************************** EDW.sqldbm_DimReseller
CREATE TABLE EDW.sqldbm_DimReseller
(
 ResellerKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Reseller identifier',
 GeographyKey         number(38,0) COMMENT 'Geography identifier',
 ResellerAlternateKey varchar(15) COMMENT 'Reseller alternate key',
 Phone                varchar(25) COMMENT 'Phone number',
 BusinessType         varchar(20) NOT NULL,
 ResellerName         varchar(50) NOT NULL,
 NumberEmployees      number(38,0) COMMENT 'hidsds ---bob --bdsfj dkjsdlkdfsj /**/dfsdf',
 OrderFrequency       varchar(1) COMMENT 'hi --bob my name is',
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
 id                   integer NOT NULL,
 isfdfd               decimal NOT NULL,

 CONSTRAINT PK_DimReseller_sqldbm_DimReseller PRIMARY KEY ( ResellerKey ),
 CONSTRAINT FK_sqldbm_DimGeography_sqldbm_DimReseller FOREIGN KEY ( GeographyKey ) REFERENCES EDW.sqldbm_DimGeography ( GeographyKey )
);