-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v21 by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_customer

CREATE TABLE operations.dim_customer
(
customer_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
customer_name string,
email         string,
address       string,
contact_info  struct<phone_number string, social_media array<string>>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'Customer information',
friendly_name = 'customer');
