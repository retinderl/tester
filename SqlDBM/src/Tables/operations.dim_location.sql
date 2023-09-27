-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v25 by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_location

CREATE TABLE operations.dim_location
(
location_id int64 NOT NULL PRIMARY KEY NOT ENFORCED,
country     string,
city        string,
coordinates struct<latitude float64, longitude float64>,
created_by  string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on  timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'List of locations and it''s details',
friendly_name = 'location');
