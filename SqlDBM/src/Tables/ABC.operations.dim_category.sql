-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v30 by retinder.labana@sqldbm.com *



-- ************************************** ABC.operations.dim_category

CREATE TABLE ABC.operations.dim_category
(
category_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
category_name string,
description   string,
subcategories array<string>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'category');
