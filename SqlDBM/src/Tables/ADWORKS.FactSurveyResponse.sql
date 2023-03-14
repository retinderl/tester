-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


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
