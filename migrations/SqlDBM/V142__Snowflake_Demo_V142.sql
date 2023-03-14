-- **************************** SqlDBM: Snowflake ****************************
-- * Generated by SqlDBM: Snowflake Demo, v142 by retinder.labana@sqldbm.com *


-- ************************************** Sequence_1
CREATE SEQUENCE Sequence_1
START WITH 1
INCREMENT BY 1;

-- ************************************** table_40
CREATE TABLE table_40
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_39
CREATE TABLE table_39
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL -- From template: "UserMeta"

);

-- ************************************** table_38
CREATE TABLE table_38
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 id       varchar NOT NULL,
 date     datetime NOT NULL -- From template: "UserMeta"

);

-- ************************************** table_37
CREATE TABLE table_37
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL -- From template: "UserMeta"

);

-- ************************************** table_36
CREATE TABLE table_36
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_35
CREATE TABLE table_35
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_34
CREATE TABLE table_34
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL -- From template: "UserMeta"

);

-- ************************************** table_33
CREATE TABLE table_33
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_32
CREATE TABLE table_32
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_31_1
CREATE TABLE table_31_1
(
 username varchar(50) NOT NULL,
 date     datetime NOT NULL,
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_30
CREATE TABLE table_30
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_29
CREATE TABLE table_29
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL -- From template: "UserMeta"

)
COMMENT = 'add';

-- ************************************** table_28
CREATE TABLE table_28
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_27_1
CREATE TABLE table_27_1
(
 username varchar(50) NOT NULL,
 date     datetime NOT NULL,
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** table_25
CREATE TABLE table_25
(
 username varchar(50) NOT NULL,
 date     datetime NOT NULL,
 col_1    varchar NOT NULL -- From template: "Company"

);

-- ************************************** ADWORKS.DimScenario
CREATE TABLE ADWORKS.DimScenario
(
 ScenarioKey  number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Scenario Identifier',
 ScenarioName varchar(50) COMMENT 'Name of the Scenario',
 CreatedBy    varchar(50) NOT NULL COMMENT 'Who Created this Scenario',
 CreatedDate  timestamp_ntz(9) NOT NULL COMMENT 'Scenario Creation Date',
 UpdatedDate  timestamp_ntz(9) NOT NULL,
 UpdatedBy    varchar(50) NOT NULL,
 TestCol      varchar(50) NOT NULL,

 CONSTRAINT PK_DimScenario PRIMARY KEY ( ScenarioKey )
)
COMMENT = 'Dimension Scenario';

-- ************************************** ADWORKS.DimPromotion
CREATE TABLE ADWORKS.DimPromotion
(
 PromotionKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 PromotionAlternateKey    number(38,0),
 EnglishPromotionName     varchar(255),
 SpanishPromotionName     varchar(255),
 FrenchPromotionName      varchar(255),
 DiscountPct              float,
 EnglishPromotionType     varchar(50),
 SpanishPromotionType     varchar(50),
 FrenchPromotionType      varchar(50),
 EnglishPromotionCategory varchar(50),
 SpanishPromotionCategory varchar(50),
 FrenchPromotionCategory  varchar(50),
 MinQty                   number(38,0),
 MaxQty                   number(38,0),

 CONSTRAINT PK_DimPromotion PRIMARY KEY ( PromotionKey )
);

-- ************************************** ADWORKS.DimProductCategory
CREATE TABLE ADWORKS.DimProductCategory
(
 ProductCategoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ProductCategoryAlternateKey number(38,0),
 EnglishProductCategoryName  varchar(50) NOT NULL,
 SpanishProductCategoryName  varchar(50) NOT NULL,
 FrenchProductCategoryName   varchar(50) NOT NULL,

 CONSTRAINT PK_DimProductCategory PRIMARY KEY ( ProductCategoryKey )
);

-- ************************************** ADWORKS.DimOrganization
CREATE TABLE ADWORKS.DimOrganization
(
 OrganizationKey       number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 tester                number(38,0),
 PercentageOfOwnership varchar(16),
 OrganizationName      varchar(50),
 tester_1              integer NOT NULL,
 CurrencyKey           number(38,0),

 CONSTRAINT PK_DimOrganization PRIMARY KEY ( OrganizationKey )
)
COMMENT = 'Dimension for Organizational Data';

-- ************************************** ADWORKS.DimGeography
CREATE TABLE ADWORKS.DimGeography
(
 GeographyKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 City                     varchar(30),
 StateProvinceCode        varchar(3),
 StateProvinceName        varchar(50),
 CountryRegionCode        varchar(3),
 EnglishCountryRegionName varchar(50),
 SpanishCountryRegionName varchar(50),
 FrenchCountryRegionName  varchar(50),
 PostalCode               varchar(15),
 SalesTerritoryKey        number(38,0),
 IpAddressLocator         varchar(15),

 CONSTRAINT PK_DimGeography PRIMARY KEY ( GeographyKey )
);

-- ************************************** ADWORKS.DimDepartmentGroup
CREATE TABLE ADWORKS.DimDepartmentGroup
(
 DepartmentGroupKey       number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ParentDepartmentGroupKey number(38,0),
 DepartmentGroupName      varchar(50),
 id                       integer NOT NULL,

 CONSTRAINT PK_DimDepartmentGroup PRIMARY KEY ( DepartmentGroupKey )
)
COMMENT = 'Dimension for Department groups';

-- ************************************** ADWORKS.DimDate
CREATE TABLE ADWORKS.DimDate
(
 DateKey              number(38,0) NOT NULL,
 FullDateAlternateKey date NOT NULL,
 DayNumberOfWeek      number(38,0) NOT NULL,
 EnglishDayNameOfWeek varchar(10) NOT NULL,
 SpanishDayNameOfWeek varchar(10) NOT NULL,
 FrenchDayNameOfWeek  varchar(10) NOT NULL,
 DayNumberOfMonth     number(38,0) NOT NULL,
 DayNumberOfYear      number(38,0) NOT NULL,
 WeekNumberOfYear     number(38,0) NOT NULL,
 EnglishMonthName     varchar(10) NOT NULL,
 SpanishMonthName     varchar(10) NOT NULL,
 FrenchMonthName      varchar(10) NOT NULL,
 MonthNumberOfYear    number(38,0) NOT NULL,
 CalendarQuarter      number(38,0) NOT NULL,
 CalendarYear         number(38,0) NOT NULL,
 CalendarSemester     number(38,0) NOT NULL,
 FiscalQuarter        number(38,0) NOT NULL,
 FiscalYear           number(38,0) NOT NULL,
 FiscalSemester       number(38,0) NOT NULL,

 CONSTRAINT PK_DimDate PRIMARY KEY ( DateKey )
)
COMMENT = 'Dimension for Date time';

-- ************************************** ADWORKS.DimCurrency
CREATE TABLE ADWORKS.DimCurrency
(
 CurrencyKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Currency Identifier',
 CurrencyAlternateKey varchar(3) NOT NULL COMMENT 'Alternate Currency Identifier',
 CurrencyName22       varchar(50) NOT NULL COMMENT 'Name of the Currency',

 CONSTRAINT PK_DimCurrency PRIMARY KEY ( CurrencyKey )
)
COMMENT = 'Dimension for Currency Data';

-- ************************************** ADWORKS.NewFactCurrencyRate
CREATE TABLE ADWORKS.NewFactCurrencyRate
(
 AverageRate111 float,
 CurrencyID     varchar(3),
 CurrencyDate   date,
 EndOfDayRate   float,
 CurrencyKey    number(38,0),
 DateKey        number(38,0),

 CONSTRAINT FK_NewFactCurrencyRate_469 FOREIGN KEY ( CurrencyKey ) REFERENCES ADWORKS.DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_NewFactCurrencyRate_471 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey )
);

-- ************************************** ADWORKS.FactSurveyResponse
CREATE TABLE ADWORKS.FactSurveyResponse
(
 SurveyResponseKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 DateKey                       number(38,0) NOT NULL,
 CustomerKey                   number(38,0) NOT NULL,
 ProductCategoryKey            number(38,0) NOT NULL,
 EnglishProductCategoryName    varchar(50) NOT NULL,
 ProductSubcategoryKey         number(38,0) NOT NULL,
 EnglishProductSubcategoryName varchar(50) NOT NULL,

 CONSTRAINT PK_3 PRIMARY KEY ( SurveyResponseKey ),
 CONSTRAINT FK_FactSurveyResponse_465 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey ),
 CONSTRAINT FK_FactSurveyResponse_467 FOREIGN KEY ( ProductCategoryKey ) REFERENCES ADWORKS.DimProductCategory ( ProductCategoryKey )
)
COMMENT = 'add';

-- ************************************** ADWORKS.FactSalesQuota
CREATE TABLE ADWORKS.FactSalesQuota
(
 SalesQuotaKey    number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 EmployeeKey      number(38,0) NOT NULL,
 DateKey          number(38,0) NOT NULL,
 CalendarYear     number(38,0) NOT NULL,
 CalendarQuarter  number(38,0) NOT NULL,
 SalesAmountQuota number(38,0) NOT NULL,

 CONSTRAINT FK_FactSalesQuota_463 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey )
);

-- ************************************** ADWORKS.FactProductInventory
CREATE TABLE ADWORKS.FactProductInventory
(
 ProductKey   number(38,0) NOT NULL,
 DateKey      number(38,0) NOT NULL,
 MovementDate date NOT NULL,
 UnitCost     number(38,0) NOT NULL,
 UnitsIn      number(38,0) NOT NULL,
 UnitsOut     number(38,0) NOT NULL,
 UnitsBalance number(38,0) NOT NULL,

 CONSTRAINT FK_FactProductInventory_443 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey )
);

-- ************************************** ADWORKS.FactFinance
CREATE TABLE ADWORKS.FactFinance
(
 FinanceKey         number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 DateKey            number(38,0) NOT NULL,
 OrganizationKey    number(38,0) NOT NULL,
 DepartmentGroupKey number(38,0) NOT NULL,
 ScenarioKey        number(38,0) NOT NULL,
 AccountKey         number(38,0) NOT NULL,
 Amount             float NOT NULL,

 CONSTRAINT FK_FactFinance_417 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey ),
 CONSTRAINT FK_FactFinance_419 FOREIGN KEY ( OrganizationKey ) REFERENCES ADWORKS.DimOrganization ( OrganizationKey ),
 CONSTRAINT FK_FactFinance_421 FOREIGN KEY ( DepartmentGroupKey ) REFERENCES ADWORKS.DimDepartmentGroup ( DepartmentGroupKey ),
 CONSTRAINT FK_FactFinance_423 FOREIGN KEY ( ScenarioKey ) REFERENCES ADWORKS.DimScenario ( ScenarioKey )
)
COMMENT = 'Facts for Finance';

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

-- ************************************** ADWORKS.DimProductSubcategory
CREATE TABLE ADWORKS.DimProductSubcategory
(
 ProductSubcategoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ProductSubcategoryAlternateKey number(38,0),
 EnglishProductSubcategoryName  varchar(50) NOT NULL,
 SpanishProductSubcategoryName  varchar(50) NOT NULL,
 FrenchProductSubcategoryName   varchar(50) NOT NULL,
 ProductCategoryKey             number(38,0),

 CONSTRAINT PK_DimProductSubcategory PRIMARY KEY ( ProductSubcategoryKey ),
 CONSTRAINT FK_DimProductSubcategory_409 FOREIGN KEY ( ProductCategoryKey ) REFERENCES ADWORKS.DimProductCategory ( ProductCategoryKey )
);

-- ************************************** ADWORKS.DimCustomer
CREATE TABLE ADWORKS.DimCustomer
(
 CustomerKey2         number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Customer Identifier',
 GeographyKey333      number(38,0) COMMENT 'Geographic informatio',
 CustomerAlternateKey varchar(15) NOT NULL COMMENT 'Alternate Key',
 Title                varchar(8) COMMENT 'Title of the Customer',
 FirstName            varchar(50),
 MiddleName           varchar(50),
 LastName             varchar(50),
 NameStyle            varchar(5),
 BirthDate            date,
 MaritalStatus        varchar(1),
 Suffix               varchar(10),
 Gender               varchar(1),
 EmailAddress         varchar(50),
 YearlyIncome         number(38,0),
 TotalChildren        number(38,0),
 NumberChildrenAtHome number(38,0),
 EnglishEducation     varchar(40),
 SpanishEducation     varchar(40),
 FrenchEducation      varchar(40),
 EnglishOccupation    varchar(100),
 SpanishOccupation    varchar(100),
 FrenchOccupation     varchar(100),
 HouseOwnerFlag       varchar(1),
 NumberCarsOwned      number(38,0),
 AddressLine          varchar(120),
 AddressLine2         varchar(120),
 Phone                varchar(20),
 DateFirstPurchase    date,
 CommuteDistance      varchar(15),

 CONSTRAINT PK_DimCustomer PRIMARY KEY ( CustomerKey2 ),
 CONSTRAINT FK_DimCustomer_401 FOREIGN KEY ( GeographyKey333 ) REFERENCES ADWORKS.DimGeography ( GeographyKey )
)
COMMENT = 'Dimension for Customer Data';

-- ************************************** table_34_1
CREATE TABLE table_34_1
(
 username          varchar(50) NOT NULL, -- From template: "UserMeta"
 date              datetime NOT NULL, -- From template: "UserMeta"
 SurveyResponseKey number(38,0) NOT NULL,

 CONSTRAINT FK_28 FOREIGN KEY ( SurveyResponseKey ) REFERENCES ADWORKS.FactSurveyResponse ( SurveyResponseKey )
);

-- ************************************** table_26
CREATE TABLE table_26
(
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL -- From template: "UserMeta"

);

-- ************************************** ADWORKS.DimProduct
CREATE TABLE ADWORKS.DimProduct
(
 ProductKey            number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ProductAlternateKey   varchar(25),
 ProductSubcategoryKey number(38,0),
 WeightUnitMeasureCode varchar(3),
 SizeUnitMeasureCode   varchar(3),
 FrenchProductName     varchar(50),
 EnglishProductName    varchar(50) NOT NULL,
 SpanishProductName    varchar(50),
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

-- ************************************** ADWORKS.DimSalesTerritory
CREATE TABLE ADWORKS.DimSalesTerritory
(
 SalesTerritoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 SalesTerritoryAlternateKey number(38,0),
 SalesOrderNumber           varchar(20) NOT NULL,
 SalesTerritoryRegion       varchar(50) NOT NULL,
 SalesTerritoryCountry      varchar(50) NOT NULL,
 SalesTerritoryGroup        varchar(50),

 CONSTRAINT PK_DimSalesTerritory PRIMARY KEY ( SalesTerritoryKey ),
 CONSTRAINT FK_37_1 FOREIGN KEY ( SalesOrderNumber ) REFERENCES ADWORKS.FactResellerSales ( SalesOrderNumber )
)
COMMENT = 'Sales Territory data';

-- ************************************** ADWORKS."Dim Employee"
CREATE TABLE ADWORKS."Dim Employee"
(
 EmployeeKey                          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ParentEmployeeKey333                 number(38,0),
 EmployeeNationalIDAlternateKey       varchar(15),
 ParentEmployeeNationalIDAlternateKey varchar(15),
 SalesTerritoryKey                    number(38,0),
 "Customer First Name"                  varchar(50) NOT NULL,
 LastName                             varchar(50) NOT NULL,
 MiddleName                           varchar(50),
 NameStyle                            number(38,0) NOT NULL,
 Title                                varchar(50),
 HireDate                             date,
 BirthDate                            date,
 LoginID                              varchar(256),
 EmailAddress                         varchar(50),
 Phone                                varchar(25),
 MaritalStatus                        varchar(1),
 EmergencyContactName                 varchar(50),
 EmergencyContactPhone                varchar(25),
 SalariedFlag                         number(38,0),
 Gender                               varchar(1),
 PayFrequency                         number(38,0),
 BaseRate                             number(38,0),
 VacationHours                        number(38,0),
 SickLeaveHours                       number(38,0),
 CurrentFlag                          number(38,0) NOT NULL,
 SalesPersonFlag                      number(38,0) NOT NULL,
 DepartmentName                       varchar(50),
 StartDate                            date,
 EndDate                              date,
 Status                               varchar(50),

 CONSTRAINT PK_DimEmployee PRIMARY KEY ( EmployeeKey ),
 CONSTRAINT FK_DimEmployee_403 FOREIGN KEY ( ParentEmployeeKey333 ) REFERENCES ADWORKS."Dim Employee" ( EmployeeKey ),
 CONSTRAINT FK_DimEmployee_405 FOREIGN KEY ( SalesTerritoryKey ) REFERENCES ADWORKS.DimSalesTerritory ( SalesTerritoryKey )
)
COMMENT = 'This table holds all Employee Information';

-- ************************************** table_31
CREATE TABLE table_31
(
 id       integer NOT NULL,
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 date     datetime NOT NULL, -- From template: "UserMeta"
 tester   varchar(50) NOT NULL,

 CONSTRAINT PK_1 PRIMARY KEY ( id )
);

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

-- ************************************** employeeReselling
CREATE TABLE employeeReselling
(
 EmployeeKey number(38,0) NOT NULL,

 CONSTRAINT PK_1 PRIMARY KEY ( EmployeeKey ),
 CONSTRAINT FK_37 FOREIGN KEY ( EmployeeKey ) REFERENCES ADWORKS."Dim Employee" ( EmployeeKey )
)
COMMENT = 'AAA';

-- ************************************** table_27
CREATE TABLE table_27
(
 id       integer NOT NULL DEFAULT Sequence_1.nextval,
 username varchar(50) NOT NULL, -- From template: "UserMeta"
 id_1     integer NOT NULL,
 date     datetime NOT NULL, -- From template: "UserMeta"
 tester   varchar(50) NOT NULL,

 CONSTRAINT PK_1 PRIMARY KEY ( id ),
 CONSTRAINT FK_39 FOREIGN KEY ( id_1 ) REFERENCES table_31 ( id )
);

-- ************************************** ADWORKS.DIM_PRODUCT_CAT_SUBCAT_V
CREATE VIEW SQLDBM_DEMO.ADWORKS.DIM_PRODUCT_CAT_SUBCAT_V(
	"ProductKey",
	"ProductAlternateKey",
	"ProductSubcategoryKey",
	"WeightUnitMeasureCode",
	"SizeUnitMeasureCode",
	"EnglishProductName",
	"StandardCost",
	"FinishedGoodsFlag",
	"Color",
	"SafetyStockLevel",
	"ReorderPoint",
	"ListPrice",
	"Size",
	"SizeRange",
	"Weight",
	"DaysToManufacture",
	"ProductLine",
	"DealerPrice",
	"Class",
	"Style",
	"ModelName",
	"EnglishDescription",
	"Status",
	"ProductCategoryKey",
	"ProductCategoryAlternateKey",
	"EnglishProductCategoryName",
	"EnglishProductSubcategoryName"
) COMMENT='Product details with cat and subcat english names. For fwd/rev engineering'
 as
(
WITH cat_subcat as (
SELECT cat.* , sub."ProductSubcategoryKey" as "SubProductSubcategoryKey", sub."EnglishProductSubcategoryName"  FROM "DimProductCategory" cat
inner join  "DimProductSubcategory" sub
on  cat."ProductCategoryKey" = sub."ProductCategoryKey"
) 
  select 
 "ProductKey"           
, "ProductAlternateKey"  
, "ProductSubcategoryKey"
, "WeightUnitMeasureCode"
, "SizeUnitMeasureCode"  
, "EnglishProductName"   
, "StandardCost"         
, "FinishedGoodsFlag"    
, "Color"                
, "SafetyStockLevel"     
, "ReorderPoint"         
, "ListPrice"            
, "Size"                 
 ,"SizeRange"            
 ,"Weight"               
 ,"DaysToManufacture"    
 ,"ProductLine"          
 ,"DealerPrice"          
 ,"Class"                
 ,"Style"                
 ,"ModelName"            
 ,"EnglishDescription"   
 ,"Status"                   
,"ProductCategoryKey"         
,"ProductCategoryAlternateKey"
,"EnglishProductCategoryName" 
,"EnglishProductSubcategoryName"
 from "DimProduct" prod
  left join cat_subcat 
  on prod."ProductSubcategoryKey" = cat_subcat."SubProductSubcategoryKey"
);

-- ************************************** procedure_1
CREATE PROCEDURE procedure_1()
  Returns string -- Please specify return type
  Language Javascript
  Comment = 'No Comment Provided'

AS
$$
  // Please type procedure definition 
$$;

