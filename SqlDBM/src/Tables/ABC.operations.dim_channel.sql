-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v26 by retinder.labana@sqldbm.com *



-- ************************************** ABC.operations.dim_channel

CREATE TABLE ABC.operations.dim_channel
(
channel_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
channel_name string,
demographics struct<age int64, gender struct<age int64, gender array<struct<age int64, gender string>>>>,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'channel');
