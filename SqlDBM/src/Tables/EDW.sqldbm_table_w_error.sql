-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v43 by retinder.labana@sqldbm.com *


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
