-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** table_34_1
CREATE OR REPLACE TABLE table_34_1
(
 username          varchar(50) NOT NULL, -- From template: "UserMeta"
 date              datetime NOT NULL, -- From template: "UserMeta"
 SurveyResponseKey number(38,0) NOT NULL,

 CONSTRAINT FK_28 FOREIGN KEY ( SurveyResponseKey ) REFERENCES ADWORKS.FactSurveyResponse ( SurveyResponseKey )
);
