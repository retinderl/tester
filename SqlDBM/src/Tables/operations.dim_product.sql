-- ******************************* SqlDBM: BigQuery ******************************
-- * Generated by SqlDBM: Google Big Query Webinar by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_product

CREATE TABLE operations.dim_product
(
product_id   int64 PRIMARY KEY NOT ENFORCED,
product_name string,
category     string,
price        float64,
attributes   struct<weight float64, dimensions struct<length float64, width float64, height float64>>
)
OPTIONS(friendly_name = 'product');