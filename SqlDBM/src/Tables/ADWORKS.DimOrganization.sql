-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


-- ************************************** ADWORKS.DimOrganization
CREATE TABLE ADWORKS.DimOrganization
(
 OrganizationKey       number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 ParentOrganizationKey number(38,0),
 PercentageOfOwnership varchar(16),
 OrganizationName      varchar(50),
 CurrencyKey           number(38,0),
 username              varchar NOT NULL, -- From template: "metadata"

 CONSTRAINT PK_DimOrganization PRIMARY KEY ( OrganizationKey )
)
COMMENT = 'Dimension for Organizational Data';
