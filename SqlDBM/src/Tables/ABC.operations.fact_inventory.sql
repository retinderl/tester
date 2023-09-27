-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v25 by retinder.labana@sqldbm.com *



-- ************************************** ABC.operations.fact_inventory

CREATE TABLE ABC.operations.fact_inventory
(
inventory_id int64 NOT NULL PRIMARY KEY NOT ENFORCED,
quantity     int64,
location_id  int64,
product_id   int64,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite",
 CONSTRAINT FK_fact_inventory_2 FOREIGN KEY (location_id) REFERENCES ABC.operations.dim_location (location_id) NOT ENFORCED,
 CONSTRAINT FK_fact_inventory_1 FOREIGN KEY (product_id) REFERENCES ABC.operations.dim_product (product_id) NOT ENFORCED
)
OPTIONS(friendly_name = 'inventory');
