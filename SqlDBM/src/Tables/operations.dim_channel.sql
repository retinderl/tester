-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v25 by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_channel

CREATE TABLE operations.dim_channel
(
channel_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
channel_name string,
demographics array<struct<age int64, gender string>>,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'Channel list and locations',
friendly_name = 'channel');
