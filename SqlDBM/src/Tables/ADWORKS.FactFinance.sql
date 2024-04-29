-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


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
 CONSTRAINT FK_FactFinance_423 FOREIGN KEY ( ScenarioKey ) REFERENCES ADWORKS.DimScenario ( ScenarioKey ),
 CONSTRAINT FK_FactFinance_425 FOREIGN KEY ( AccountKey ) REFERENCES ADWORKS.DimAccount ( AccountKey )
)
COMMENT = 'Facts for Finance';
