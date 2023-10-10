-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v27 by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_supplier

CREATE TABLE operations.dim_supplier
(
supplier_id    int64,
supplier_name  string,
contact_person string,
address        struct<street string, city string, state string, country string>,
payment_terms  array<string>,
created_by     string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on     timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'supplier information',
friendly_name = 'supplier');
