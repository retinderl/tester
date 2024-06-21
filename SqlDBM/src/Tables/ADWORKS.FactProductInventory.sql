-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Snowflake Demo 12 by retinder.labana@sqldbm.com *


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
 username     varchar NOT NULL, -- From template: "metadata"

 CONSTRAINT FK_FactProductInventory_443 FOREIGN KEY ( DateKey ) REFERENCES ADWORKS.DimDate ( DateKey )
);
