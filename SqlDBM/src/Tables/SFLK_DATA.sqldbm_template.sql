-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v45 by retinder.labana@sqldbm.com *


-- ************************************** SFLK_DATA.sqldbm_template
CREATE TABLE SFLK_DATA.sqldbm_template
(
 ScenarioKey   number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 ETL_ID        timestamp NOT NULL COMMENT 'Table load date',
 ETL_TIMESTAMP timestamp_ntz NOT NULL COMMENT 'Table load date TIME',

 CONSTRAINT PK_1_sqldbm_template PRIMARY KEY ( ScenarioKey )
);
