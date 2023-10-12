-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v29 by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_category

CREATE TABLE operations.dim_category
(
category_id   int64,
category_name string OPTIONS(description = 'name of the category'),
description   string OPTIONS(description = 'description for the category'),
subcategories array<string>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'Category list and it''s details',
friendly_name = 'category');
