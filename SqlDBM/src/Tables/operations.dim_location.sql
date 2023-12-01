-- ******************************* SqlDBM: BigQuery ******************************
-- * Generated by SqlDBM: Google Big Query Webinar by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_location

CREATE TABLE operations.dim_location
(
location_id int64 PRIMARY KEY NOT ENFORCED,
country     string,
city        string,
coordinates struct<latitude float64, longitude float64>
)
OPTIONS(friendly_name = 'location');
