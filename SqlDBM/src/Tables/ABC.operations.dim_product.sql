-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v21 by retinder.labana@sqldbm.com *



-- ************************************** `ABC.operations`.dim_product

CREATE TABLE `ABC.operations`.dim_product
(
product_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
product_name string,
category     string,
price        float64,
attributes   struct<weight float64, dimensions struct<length float64, width float64, height float64>>,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'product');
