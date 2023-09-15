-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v45 by retinder.labana@sqldbm.com *


-- ************************************** table_32
CREATE TABLE table_32
(
 col_1 date NOT NULL -- From template: "Template"

);

-- ************************************** table_30
CREATE TABLE table_30
(
 col_1 date NOT NULL -- From template: "Template"

);

-- ************************************** table_29
CREATE TABLE table_29
(
 col_1 date NOT NULL -- From template: "Template"

);

-- ************************************** table_28
CREATE TABLE table_28
(
 col_1 date NOT NULL -- From template: "Template"

);

-- ************************************** SFLK_DATA.sqldbm_template
CREATE TABLE SFLK_DATA.sqldbm_template
(
 ScenarioKey   number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 ETL_ID        timestamp NOT NULL COMMENT 'Table load date',
 ETL_TIMESTAMP timestamp_ntz NOT NULL COMMENT 'Table load date TIME',

 CONSTRAINT PK_1_sqldbm_template PRIMARY KEY ( ScenarioKey )
);

-- ************************************** EDW.sqldbm_DimScenario
CREATE TABLE EDW.sqldbm_DimScenario
(
 ScenarioKey  number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Scenario Identifier',
 ScenarioName varchar(50) COMMENT 'Name of the Scenario',
 CreatedBy    varchar(50) NOT NULL COMMENT 'Who Created this Scenario',
 CreatedDate  timestamp_ntz(9) NOT NULL COMMENT 'Scenario Creation Date',
 UpdatedDate  timestamp_ntz(9) NOT NULL,
 UpdatedBy    varchar(50) NOT NULL,
 test_col     varchar NOT NULL,
 int           NOT NULL,

 CONSTRAINT PK_DimScenario_sqldbm_DimScenario PRIMARY KEY ( ScenarioKey )
)
COMMENT = 'Dimension Scenario';

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

-- ************************************** EDW.sqldbm_DimPromotion
CREATE TABLE EDW.sqldbm_DimPromotion
(
 PromotionKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Promotion identifier',
 PromotionAlternateKey    number(38,0) COMMENT 'Promotion alternate key',
 EnglishPromotionName     varchar(255) COMMENT 'Promotion name in English',
 SpanishPromotionName     varchar(255) COMMENT 'Promotion name in Spanish',
 FrenchPromotionName      varchar(255) COMMENT 'Promotion name in French',
 DiscountPct              float COMMENT 'The percentage of the discount',
 EnglishPromotionType     varchar(50) COMMENT 'Promotion type in English',
 SpanishPromotionType     varchar(50) COMMENT 'Promotion type in Spanish',
 FrenchPromotionType      varchar(50) COMMENT 'Promotion type in French',
 EnglishPromotionCategory varchar(50) COMMENT 'Promotion category in French',
 SpanishPromotionCategory varchar(50) COMMENT 'Promotion category in French',
 FrenchPromotionCategory  varchar(50) COMMENT 'Promotion category in French',
 MinQty                   number(38,0),
 MaxQty                   number(38,0),

 CONSTRAINT PK_DimPromotion_sqldbm_DimPromotion PRIMARY KEY ( PromotionKey )
);

-- ************************************** EDW.sqldbm_DimProductCategory
CREATE TABLE EDW.sqldbm_DimProductCategory
(
 ProductCategoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Product category identifier',
 ProductCategoryAlternateKey number(38,0) COMMENT 'Product category alternate key',
 EnglishProductCategoryName  varchar(50) NOT NULL COMMENT 'Product category name in English',
 SpanishProductCategoryName  varchar(50) NOT NULL COMMENT 'Product category name in Spanish',
 FrenchProductCategoryName   varchar(50) NOT NULL COMMENT 'Product category name in French',

 CONSTRAINT PK_DimProductCategory_sqldbm_DimProductCategory PRIMARY KEY ( ProductCategoryKey )
);

-- ************************************** EDW.sqldbm_DimOrganization
CREATE TABLE EDW.sqldbm_DimOrganization
(
 OrganizationKey       number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Organizarion identifier',
 ParentOrganizationKey number(38,0) COMMENT 'Organizarion identifier for the parent relationship',
 PercentageOfOwnership varchar(16) COMMENT 'Ownership percentage of the organization',
 OrganizationName      varchar(50),
 CurrencyKey           number(38,0) COMMENT 'Currency Identifier',

 CONSTRAINT PK_DimOrganization_sqldbm_DimOrganization PRIMARY KEY ( OrganizationKey )
)
COMMENT = 'Dimension for Organizational Data';

-- ************************************** EDW.sqldbm_DimGeography
CREATE TABLE EDW.sqldbm_DimGeography
(
 GeographyKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 City                     varchar(30),
 StateProvinceCode        varchar(3) COMMENT 'State Province Identifier',
 StateProvinceName        varchar(50) COMMENT 'State Province name',
 CountryRegionCode        varchar(3) COMMENT 'Country region Identifier',
 EnglishCountryRegionName varchar(50) COMMENT 'Country region name in English',
 SpanishCountryRegionName varchar(50) COMMENT 'Country region name  in Spanish',
 FrenchCountryRegionName  varchar(50) COMMENT 'Country region name in French',
 PostalCode               varchar(15),
 SalesTerritoryKey        number(38,0) COMMENT 'SalesTerritory identifier',
 IpAddressLocator         varchar(15) COMMENT 'IP address navigation',

 CONSTRAINT PK_DimGeography_sqldbm_DimGeography PRIMARY KEY ( GeographyKey )
);

-- ************************************** EDW.sqldbm_DimDepartmentGroup
CREATE TABLE EDW.sqldbm_DimDepartmentGroup
(
 DepartmentGroupKey       number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ParentDepartmentGroupKey number(38,0),
 DepartmentGroupName      varchar(50) COMMENT 'The name of the department group',
 id                       integer NOT NULL,
 add_coul                 integer NOT NULL,
 id_1                     integer NOT NULL,

 CONSTRAINT PK_DimDepartmentGroup_sqldbm_DimDepartmentGroup PRIMARY KEY ( DepartmentGroupKey )
)
COMMENT = 'Added new comment';

-- ************************************** EDW.sqldbm_DimDate
CREATE TABLE EDW.sqldbm_DimDate
(
 DateKey              number(38,0) NOT NULL,
 FullDateAlternateKey date NOT NULL COMMENT 'Alternate key of the full date',
 DayNumberOfWeek      number(38,0) NOT NULL,
 EnglishDayNameOfWeek varchar(10) NOT NULL COMMENT 'Day name is called in English',
 SpanishDayNameOfWeek varchar(10) NOT NULL COMMENT 'Day name is called in Spanish',
 FrenchDayNameOfWeek  varchar(10) NOT NULL COMMENT 'Day name is called in French',
 DayNumberOfMonth     number(38,0) NOT NULL,
 DayNumberOfYear      number(38,0) NOT NULL,
 WeekNumberOfYear     number(38,0) NOT NULL COMMENT 'The number of the weeks',
 EnglishMonthName     varchar(10) NOT NULL COMMENT 'Month is called in English',
 SpanishMonthName     varchar(10) NOT NULL COMMENT 'Month is called in Spanish',
 FrenchMonthName      varchar(10) NOT NULL COMMENT 'Month is called in French',
 MonthNumberOfYear    number(38,0) NOT NULL COMMENT 'The number of the months',
 CalendarQuarter      number(38,0) NOT NULL COMMENT 'Quarter period of the calendar year',
 CalendarYear         number(38,0) NOT NULL COMMENT 'New Year''s Day of the given calendar system and ends on the day before the following New Year''s Day',
 CalendarSemester     number(38,0) NOT NULL COMMENT 'Semester period of the calendar year',
 FiscalQuarter        number(38,0) NOT NULL COMMENT 'It is a quarter period of time that a company or government uses for accounting purposes',
 FiscalYear           number(38,0) NOT NULL COMMENT 'It is a one-year period of time that a company or government uses for accounting purposes',
 FiscalSemester       number(38,0) NOT NULL COMMENT 'It is a semester period of time that a company or government uses for accounting purposes',

 CONSTRAINT PK_DimDate_sqldbm_DimDate PRIMARY KEY ( DateKey )
)
COMMENT = 'Dimension for Date time';

-- ************************************** EDW.sqldbm_DimAccount
CREATE TABLE EDW.sqldbm_DimAccount
(
 AccountKey                    number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Unique Identifier of the Account data from Salesforce',
 ParentAccountKey              number(38,0) COMMENT 'Identifier of parent Account',
 AccountCodeAlternateKey       number(38,0) COMMENT 'Alternate key of Account Identifier',
 ParentAccountCodeAlternateKey number(38,0) COMMENT 'Alternate key of Account Identifier',
 AccountDescription            varchar(50) COMMENT 'Account description associated with its key',
 AccountType                   varchar(50) COMMENT 'The type of the Account',
 CustomMembers                 varchar(300) COMMENT 'Member of the account',
 ValueType                     varchar(50) COMMENT 'The value of the Account',
 CustomMemberOptions           varchar(200),
 id                            abc NOT NULL,
 col_1                         date NOT NULL, -- From template: "Template"

 CONSTRAINT PK_DimAccount_sqldbm_DimAccount PRIMARY KEY ( AccountKey )
)
COMMENT = 'Holds all Account information';

-- ************************************** sample_test
CREATE TABLE sample_test
(
 col_1 date NOT NULL, -- From template: "Template"
 id    int NOT NULL
);

-- ************************************** EDW.sqldbm_table_w_error
CREATE TABLE EDW.sqldbm_table_w_error
(
 AccountKey       number(38,0) NOT NULL COMMENT 'Unique Identifier of the Account data from Salesforce',
 forget_data_type not,
 new_column       number(38,0) NOT NULL,

 CONSTRAINT PK_2_sqldbm_table_w_error PRIMARY KEY ( AccountKey ),
 CONSTRAINT FK_sqldbm_DimAccount_sqldbm_table_w_error FOREIGN KEY ( AccountKey ) REFERENCES EDW.sqldbm_DimAccount ( AccountKey )
)
COMMENT = 'The table with an error. Data type is forgotten';

-- ************************************** SFLK_DATA.sqldbm_role_name_applied
CREATE TABLE SFLK_DATA.sqldbm_role_name_applied
(
 GeographyKey_2 number(38,0) NOT NULL,
 ETL_ID         timestamp NOT NULL COMMENT 'Table load date',
 ETL_TIMESTAMP  timestamp_ntz NOT NULL COMMENT 'Table load date TIME',

 CONSTRAINT PK_1_sqldbm_role_name_applied PRIMARY KEY ( GeographyKey_2 ),
 CONSTRAINT FK_sqldbm_DimGeography_sqldbm_role_name_applied FOREIGN KEY ( GeographyKey_2 ) REFERENCES EDW.sqldbm_DimGeography ( GeographyKey )
);

-- ************************************** EDW.sqldbm_FactSurveyResponse
CREATE TABLE EDW.sqldbm_FactSurveyResponse
(
 SurveyResponseKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 DateKey                       number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 CustomerKey                   number(38,0) NOT NULL COMMENT 'Customer Identifier',
 ProductCategoryKey            number(38,0) NOT NULL COMMENT 'Product category identifier',
 EnglishProductCategoryName    varchar(50) NOT NULL COMMENT 'Product category name in English',
 ProductSubcategoryKey         number(38,0) NOT NULL COMMENT 'Product Subcategory identifier',
 EnglishProductSubcategoryName varchar(50) NOT NULL COMMENT 'Product Subcategory name',

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ProductCategoryKey ) REFERENCES EDW.sqldbm_DimProductCategory ( ProductCategoryKey )
);

-- ************************************** EDW.sqldbm_FactSalesQuota
CREATE TABLE EDW.sqldbm_FactSalesQuota
(
 SalesQuotaKey    number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Sales quata identifier',
 EmployeeKey      number(38,0) NOT NULL COMMENT 'Employee Identifier',
 DateKey          number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 CalendarYear     number(38,0) NOT NULL COMMENT 'New Year''s Day of the given calendar system and ends on the day before the following New Year''s Day',
 CalendarQuarter  number(38,0) NOT NULL COMMENT 'Quarter period of the calendar year',
 SalesAmountQuota number(38,0) NOT NULL COMMENT 'Quarterly sales amount',

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
);

-- ************************************** EDW.sqldbm_FactProductInventory
CREATE TABLE EDW.sqldbm_FactProductInventory
(
 ProductKey   number(38,0) NOT NULL,
 DateKey      number(38,0) NOT NULL,
 MovementDate date NOT NULL,
 UnitCost     number(38,0) NOT NULL,
 UnitsIn      number(38,0) NOT NULL,
 UnitsOut     number(38,0) NOT NULL,
 UnitsBalance number(38,0) NOT NULL,

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
);

-- ************************************** EDW.sqldbm_FactFinance
CREATE TABLE EDW.sqldbm_FactFinance
(
 OrganizationKey    number(38,0) NOT NULL COMMENT 'Organizarion identifier',
 FinanceKey         number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Finance identifier',
 DateKey            number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 DepartmentGroupKey number(38,0) NOT NULL COMMENT 'Department group identifier',
 ScenarioKey        number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 AccountKey         number(38,0) NOT NULL COMMENT 'Account Identifier',
 Amount             float NOT NULL COMMENT 'Amount in Eur',

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( OrganizationKey ) REFERENCES EDW.sqldbm_DimOrganization ( OrganizationKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DepartmentGroupKey ) REFERENCES EDW.sqldbm_DimDepartmentGroup ( DepartmentGroupKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ScenarioKey ) REFERENCES EDW.sqldbm_DimScenario ( ScenarioKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( AccountKey ) REFERENCES EDW.sqldbm_DimAccount ( AccountKey )
)
COMMENT = 'Facts for Finance';

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

-- ************************************** EDW.sqldbm_DimProductSubcategory
CREATE TABLE EDW.sqldbm_DimProductSubcategory
(
 ProductSubcategoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Product subcategory identifier',
 ProductSubcategoryAlternateKey number(38,0) NOT NULL COMMENT 'Product subcategory alternate key',
 EnglishProductSubcategoryName  varchar(50) NOT NULL COMMENT 'Product subcategory name in English',
 SpanishProductSubcategoryName  varchar(50) NOT NULL COMMENT 'Product category name in Spanish',
 FrenchProductSubcategoryName   varchar(50) NOT NULL COMMENT 'Product category name in French',
 ProductCategoryKey             number(38,0) NOT NULL COMMENT 'Product category identifier',

 CONSTRAINT PK_DimProductSubcategory_sqldbm_DimProductSubcategory PRIMARY KEY ( ProductSubcategoryKey ),
 CONSTRAINT AK_3 UNIQUE ( ProductSubcategoryAlternateKey ),
 CONSTRAINT FK_sqldbm_DimProductCategory_sqldbm_DimProductSubcategory FOREIGN KEY ( ProductCategoryKey ) REFERENCES EDW.sqldbm_DimProductCategory ( ProductCategoryKey )
);

-- ************************************** EDW.sqldbm_DimCustomer
CREATE TABLE EDW.sqldbm_DimCustomer
(
 CustomerKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Customer Identifier',
 GeographyKey         number(38,0) COMMENT 'Geographic informatio',
 CustomerAlternateKey varchar(15) NOT NULL COMMENT 'Alternate Key',
 Title                varchar(8) COMMENT 'Title of the Customer',
 FirstName            varchar(50) COMMENT 'Name of the customer',
 MiddleName           varchar(50) COMMENT 'Middle name of the customer',
 LastName             varchar(50) COMMENT 'Surname of the customer',
 NameStyle            varchar(5) COMMENT 'Prefered name',
 BirthDate            date COMMENT 'The birtday of the client',
 MaritalStatus        varchar(1) COMMENT 'Married/Single',
 Suffix               varchar(10) COMMENT 'Appendix of the name',
 Gender               varchar(1) COMMENT 'F/M',
 EmailAddress         varchar(50) COMMENT 'e-mail address of the client',
 YearlyIncome         number(38,0) COMMENT 'Brute annual income',
 TotalChildren        number(38,0) COMMENT 'The number of children',
 NumberChildrenAtHome number(38,0) COMMENT 'The number of children who live with that client',
 EnglishEducation     varchar(40) COMMENT 'Yes/No',
 SpanishEducation     varchar(40) COMMENT 'Yes/No',
 FrenchEducation      varchar(40) COMMENT 'Yes/No',
 EnglishOccupation    varchar(100) COMMENT 'Yes/No',
 SpanishOccupation    varchar(100) COMMENT 'Yes/No',
 FrenchOccupation     varchar(100) COMMENT 'Yes/No',
 HouseOwnerFlag       varchar(1) COMMENT 'Yes/No',
 NumberCarsOwned      number(38,0) COMMENT 'The number of the cars that client has',
 AddressLine          varchar(120) COMMENT 'Billing address',
 AddressLine2         varchar(120) COMMENT 'Billing address',
 Phone                varchar(20) COMMENT 'Phone number of the client',
 DateFirstPurchase    date COMMENT 'The first time the client bought the product',
 CommuteDistance      varchar(15),

 CONSTRAINT PK_DimCustomer_sqldbm_DimCustomer PRIMARY KEY ( CustomerKey ),
 CONSTRAINT FK_sqldbm_DimGeography_sqldbm_DimCustomer FOREIGN KEY ( GeographyKey ) REFERENCES EDW.sqldbm_DimGeography ( GeographyKey )
)
COMMENT = 'Dimension for Customer Data';

-- ************************************** EDW.sqldbm_ChildDemo
CREATE TABLE EDW.sqldbm_ChildDemo
(
 ScenarioKey number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 CreatedBy   varchar(50) NOT NULL COMMENT 'Date when the scenario created',
 CreatedDate timestamp_ntz(9) NOT NULL COMMENT 'Who Created this Scenario',
 UpdatedDate timestamp_ntz(9) NOT NULL COMMENT 'Date when the scenario updated',
 UpdatedBy   varchar(50) NOT NULL COMMENT 'Who updated this Scenario',
 id          int NOT NULL,

 CONSTRAINT PK_664_sqldbm_ChildDemo PRIMARY KEY ( ScenarioKey ),
 CONSTRAINT FK_sqldbm_DimScenario_sqldbm_ChildDemo FOREIGN KEY ( ScenarioKey ) REFERENCES EDW.sqldbm_DimScenario ( ScenarioKey )
)
COMMENT = 'Child table created by Scenario entity';

-- ************************************** SFLK_DATA.sqldbm_DimReseller_child
CREATE TABLE SFLK_DATA.sqldbm_DimReseller_child
(
 ResellerKey          number(38,0) NOT NULL COMMENT 'Reseller identifier',
 ResellerAlternateKey varchar(15) COMMENT 'Reseller alternate key',
 BusinessType         varchar(20) NOT NULL,
 ResellerName         varchar(50) NOT NULL,
 NumberEmployees      number(38,0),
 ETL_ID               timestamp NOT NULL COMMENT 'Table load date',
 ETL_TIMESTAMP        timestamp_ntz NOT NULL COMMENT 'Table load date TIME',

 CONSTRAINT PK_1_sqldbm_DimReseller_child PRIMARY KEY ( ResellerKey ),
 CONSTRAINT FK_sqldbm_DimReseller_sqldbm_DimReseller_child FOREIGN KEY ( ResellerKey ) REFERENCES EDW.sqldbm_DimReseller ( ResellerKey )
);

-- ************************************** EDW.sqldbm_DimProduct
CREATE TABLE EDW.sqldbm_DimProduct
(
 ProductKey            number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Product identifier',
 ProductAlternateKey   varchar(25) COMMENT 'Alternate key of Product identifier',
 ProductSubcategoryKey number(38,0) COMMENT 'Product Subcategory identifier',
 WeightUnitMeasureCode varchar(3) COMMENT 'The weight unit measure code',
 SizeUnitMeasureCode   varchar(3) COMMENT 'The size unit measure code',
 EnglishProductName    varchar(50) NOT NULL COMMENT 'Product name in English',
 SpanishProductName    varchar(50) COMMENT 'Product name in Spanish',
 FrenchProductName     varchar(50) COMMENT 'Product name in French',
 StandardCost          number(38,0) COMMENT 'Standard cost amount',
 FinishedGoodsFlag     number(38,0) NOT NULL,
 SafetyStockLevel      number(38,0),
 ReorderPoint          number(38,0),
 ListPrice             number(38,0) COMMENT 'List of the price of the selected product',
 Size                  varchar(50) COMMENT 'Product size',
 SizeRange             varchar(50) COMMENT 'Range of the size',
 Weight                float COMMENT 'Product weight',
 DaysToManufacture     number(38,0),
 ProductLine           varchar(2) COMMENT 'Where the product is provided',
 DealerPrice           number(38,0),
 Class                 varchar(2) COMMENT 'Product class',
 Style                 varchar(2) COMMENT 'Product style',
 ModelName             varchar(50) COMMENT 'Product model name',
 EnglishDescription    varchar(400) COMMENT 'Description in English',
 FrenchDescription     varchar(400) COMMENT 'Description in French',
 ChineseDescription    varchar(400) COMMENT 'Description in Chinese',
 ArabicDescription     varchar(400) COMMENT 'Description in Arabic',
 HebrewDescription     varchar(400) COMMENT 'Description in Hebrew',
 ThaiDescription       varchar(400) COMMENT 'Description in Thai',
 GermanDescription     varchar(400) COMMENT 'Description in German',
 JapaneseDescription   varchar(400) COMMENT 'Description in Japanese',
 TurkishDescription    varchar(400) COMMENT 'Description in Turkish',
 Status                varchar(7) COMMENT 'Product status',

 CONSTRAINT PK_DimProduct_sqldbm_DimProduct PRIMARY KEY ( ProductKey ),
 CONSTRAINT AK_3 UNIQUE ( ProductAlternateKey ),
 CONSTRAINT FK_sqldbm_DimProductSubcategory_sqldbm_DimProduct FOREIGN KEY ( ProductSubcategoryKey ) REFERENCES EDW.sqldbm_DimProductSubcategory ( ProductSubcategoryKey )
)
COMMENT = 'product table';

-- ************************************** EDW.sqldbm_DimCurrency
CREATE TABLE EDW.sqldbm_DimCurrency
(
 CurrencyKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Currency Identifier',
 CurrencyAlternateKey varchar(3) NOT NULL COMMENT 'Alternate Currency Identifier',
 ProductKey           number(38,0) NOT NULL COMMENT 'Product identifier',
 CurrencyName         varchar(50) NOT NULL COMMENT 'Name of the Currency',

 CONSTRAINT PK_DimCurrency_sqldbm_DimCurrency PRIMARY KEY ( CurrencyKey ),
 CONSTRAINT FK_sqldbm_DimProduct_sqldbm_DimCurrency FOREIGN KEY ( ProductKey ) REFERENCES EDW.sqldbm_DimProduct ( ProductKey )
)
COMMENT = 'Dimension for Currency Data';

-- ************************************** EDW.sqldbm_NewFactCurrencyRate
CREATE TABLE EDW.sqldbm_NewFactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL COMMENT 'Currency Identifier',
 AverageRate  float,
 CurrencyID   varchar(3) COMMENT 'Currency Identifier',
 CurrencyDate date,
 EndOfDayRate float COMMENT 'The daily closing rate',
 DateKey      number(38,0) COMMENT 'It is the key to join date table',
 id           integer NOT NULL,

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
);

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

-- ************************************** EDW.sqldbm_FactInternetSales
CREATE TABLE EDW.sqldbm_FactInternetSales
(
 OrderDateKey          number(38,0) NOT NULL,
 DueDateKey            number(38,0) NOT NULL,
 ShipDateKey           number(38,0) NOT NULL,
 CustomerKey           number(38,0) NOT NULL,
 PromotionKey          number(38,0) NOT NULL,
 CurrencyKey           number(38,0) NOT NULL,
 SalesTerritoryKey     number(38,0) NOT NULL,
 SalesOrderNumber      varchar(20) NOT NULL,
 SalesOrderLineNumber  number(38,0) NOT NULL,
 RevisionNumber        number(38,0) NOT NULL,
 OrderQuantity         number(38,0) NOT NULL,
 UnitPrice             number(38,0) NOT NULL,
 ExtendedAmount        number(38,0) NOT NULL,
 UnitPriceDiscountPct  float NOT NULL,
 DiscountAmount        float NOT NULL,
 ProductStandardCost   number(38,0) NOT NULL,
 TotalProductCost      number(38,0) NOT NULL,
 SalesAmount           number(38,0) NOT NULL,
 TaxAmt                number(38,0) NOT NULL,
 Freight               number(38,0) NOT NULL,
 CarrierTrackingNumber varchar(25),
 CustomerPONumber      varchar(25),

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( CustomerKey ) REFERENCES EDW.sqldbm_DimCustomer ( CustomerKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( PromotionKey ) REFERENCES EDW.sqldbm_DimPromotion ( PromotionKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( SalesTerritoryKey ) REFERENCES EDW.sqldbm_DimSalesTerritory ( SalesTerritoryKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( OrderDateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DueDateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ShipDateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
)
COMMENT = 'Fact table to hold Currency Data';

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

-- ************************************** SFLK_DATA.LOYALTY_V
CREATE VIEW SQLDBM_DEMO.SFLK_DATA.LOYALTY_V(
	L_LOYALTYKEY,
	L_CUSTKEY,
	L_NAME,
	L_TYPE,
	L_COMMENTS
) as 
with cust as (

    select
        c_custkey,
        c_name,
        c_address,
        c_nationkey,
        c_phone,
        c_acctbal,
        c_mktsegment,
        c_comment
    from SQLDBM_DEMO.SFLK_DATA.CUSTOMER

)

, ord as (

  select 
        o_orderkey,
        o_custkey,
        o_orderstatus,
        o_totalprice,
        o_orderdate,
        o_orderpriority,
        o_clerk,
        o_shippriority,
        o_comment
   from SQLDBM_DEMO.SFLK_DATA.ORDERS
)

, cust_ord as ( 

    select o_custkey, sum(o_totalprice) as o_totalprice from (
            select  o.*, c.*
            from ord o 
            inner join cust c 
            on o.o_custkey = c_custkey
            where true 
            and c_acctbal > 0 --no deadbeats 
            and c_nationkey != 22 -- Excluding Russia from loyalty program will send strong message to Putin
    )
    group by 1
)

, business_logic as (
    select *

    , dense_rank() OVER  ( order by o_totalprice desc ) as cust_level 
    
    , case 
        when   cust_level between 1 and 20 then 'gold'
        when   cust_level between 21 and 100 then 'silver'
        when   cust_level between 101 and 400 then 'bronze'
               end as loyalty_level

    from cust_ord
    where true 
    qualify cust_level <= 400
    order by cust_level asc
)  

, early_supporters as (

-- the first five customers who believed in us
    select column1 as o_custkey from values (349642), (896215) , (350965) , (404707), (509986)
)


, all_loyalty as (

select
left(loyalty_level, 1 ) ||  '|' || o_custkey as l_loyaltykey
, o_custkey
, loyalty_level
, 'rule-based' as l_type
from business_logic 

union all 

select 
'g|' || o_custkey as l_loyaltykey
, o_custkey
, 'gold' as loyalty_level
, 'supporter' as l_type
from early_supporters
)

, rename as (

select 
  l_loyaltykey
, o_custkey as l_custkey
, loyalty_level as l_name 
, l_type
, '' as l_comments

 from all_loyalty

)

select * from rename 
where true;

-- ************************************** HOTELBNB.SQL_PROCEDURE
CREATE PROCEDURE ADVENTUREWORKSDW.HOTELBNB.SQL_PROCEDURE()
  Returns string -- Please specify return type
  Language sql
  Comment = 'It is a nice procedure'

AS
$$
select 1
$$;

-- ************************************** testing
CREATE PROCEDURE testing()
  RETURNS VARCHAR not null */ /* UNSUPPORTED_CODE: LANGUAGE SQL AS $$
  var rs = snowflake.execute( { sqlText: 
      `INSERT INTO table1 ("column 1") 
           SELECT 'value 1' AS "column 1" ;`
       } );
  return 'Done.';
  $$;

