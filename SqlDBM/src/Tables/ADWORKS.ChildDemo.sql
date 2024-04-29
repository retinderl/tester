-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


-- ************************************** ADWORKS.ChildDemo
CREATE TABLE ADWORKS.ChildDemo
(
 ScenarioKey number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 CreatedBy   varchar(50) NOT NULL,
 CreatedDate timestamp_ntz(9) NOT NULL,
 UpdatedDate timestamp_ntz(9) NOT NULL,
 UpdatedBy   varchar(50) NOT NULL,
 id          int NOT NULL,

 CONSTRAINT PK_664 PRIMARY KEY ( ScenarioKey ) RELY,
 CONSTRAINT FK_661 FOREIGN KEY ( ScenarioKey ) REFERENCES ADWORKS.DimScenario ( ScenarioKey ) RELY
);
