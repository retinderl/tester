-- ******************************* SqlDBM: BigQuery ******************************
-- * Generated by SqlDBM: Google Big Query Webinar by retinder.labana@sqldbm.com *



-- ************************************** ABC.operations.dim_customer

CREATE TABLE ABC.operations.dim_customer
(
customer_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
customer_name string,
email         string,
address       string,
contact_info  struct<phone_number string, social_media array<string>>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
 PARTITION BY  RANGE_BUCKET(customer_id, GENERATE_ARRAY(1, 1000, 50)) 
OPTIONS(expiration_timestamp = 2025-02-03 12:34:56,
require_partition_filter = true,
friendly_name = 'customer');
