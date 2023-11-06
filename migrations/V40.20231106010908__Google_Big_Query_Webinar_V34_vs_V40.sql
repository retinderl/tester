-- ************************************* SqlDBM: BigQuery ************************************
-- * Generated by SqlDBM: Google Big Query Webinar, v40 vs v34 by retinder.labana@sqldbm.com *

CREATE SCHEMA Project.shaped_canyon_389209
OPTIONS(is_case_insensitive = false);

CREATE SCHEMA serge
OPTIONS(is_case_insensitive = false);

CREATE SCHEMA serge_caseInsens
OPTIONS(is_case_insensitive = true);

CREATE VIEW view_1
AS (
  
);

ALTER TABLE operations.dim_time
DROP COLUMN created_by;

ALTER TABLE operations.dim_time
DROP COLUMN created_on;

DROP TABLE operations.dim_time;

CREATE TABLE operations.dim_time
(
time_id       int64 PRIMARY KEY NOT ENFORCED,
date          date,
hour          int64,
day_of_week   string,
time_segments array<struct<start_time time, end_time time>>
)
OPTIONS(friendly_name = 'time');

ALTER TABLE operations.fact_inventory
DROP COLUMN created_by;

ALTER TABLE operations.fact_inventory
DROP COLUMN created_on;

DROP TABLE operations.fact_inventory;

CREATE TABLE operations.fact_inventory
(
inventory_id int64 PRIMARY KEY NOT ENFORCED,
product_id   int64,
location_id  int64,
quantity     int64,
 CONSTRAINT FK_fact_inventory_1 FOREIGN KEY (product_id) REFERENCES operations.dim_product (product_id) NOT ENFORCED,
 CONSTRAINT FK_fact_inventory_2 FOREIGN KEY (location_id) REFERENCES operations.dim_location (location_id) NOT ENFORCED
)
OPTIONS(friendly_name = 'inventory');

ALTER TABLE operations.dim_customer
DROP COLUMN created_by;

ALTER TABLE operations.dim_customer
DROP COLUMN created_on;

DROP TABLE operations.dim_customer;

CREATE TABLE operations.dim_customer
(
customer_id   int64 PRIMARY KEY NOT ENFORCED,
customer_name string,
email         string,
address       string,
contact_info  struct<phone_number string, social_media array<string>>
)
OPTIONS(friendly_name = 'customer');

ALTER TABLE operations.dim_customer
 SET OPTIONS(
description = '');

ALTER TABLE operations.dim_location
DROP COLUMN created_by;

ALTER TABLE operations.dim_location
DROP COLUMN created_on;

DROP TABLE operations.dim_location;

-- ************************************** operations.dim_location

-- ************************************** operations.dim_location

CREATE TABLE operations.dim_location
(
location_id int64 PRIMARY KEY NOT ENFORCED,
country     string,
city        string,
coordinates struct<latitude float64, longitude float64>
)
OPTIONS(friendly_name = 'location');

ALTER TABLE operations.dim_location
 SET OPTIONS(
description = '');

ALTER TABLE operations.dim_employee
DROP COLUMN created_by;

ALTER TABLE operations.dim_employee
DROP COLUMN created_on;

DROP TABLE operations.dim_employee;

-- ************************************** operations.dim_employee

-- ************************************** operations.dim_employee

CREATE TABLE operations.dim_employee
(
employee_id   int64 PRIMARY KEY NOT ENFORCED,
employee_name string,
role          string,
skills        array<string>
)
OPTIONS(friendly_name = 'employee');

ALTER TABLE operations.dim_employee
 SET OPTIONS(
description = '');

ALTER TABLE operations.fact_sales
DROP COLUMN created_by;

ALTER TABLE operations.fact_sales
DROP COLUMN created_on;

DROP TABLE operations.fact_sales;

-- ************************************** operations.fact_sales

-- ************************************** operations.fact_sales

CREATE TABLE operations.fact_sales
(
sale_id     int64 PRIMARY KEY NOT ENFORCED,
customer_id int64,
product_id  int64,
time_id     int64,
quantity    int64,
price       float64,
 CONSTRAINT FK_fact_sales_1 FOREIGN KEY (customer_id) REFERENCES operations.dim_customer (customer_id) NOT ENFORCED,
 CONSTRAINT FK_fact_sales_2 FOREIGN KEY (product_id) REFERENCES operations.dim_product (product_id) NOT ENFORCED,
 CONSTRAINT FK_fact_sales_3 FOREIGN KEY (time_id) REFERENCES operations.dim_time (time_id) NOT ENFORCED
)
OPTIONS(friendly_name = 'fact sales');

ALTER TABLE operations.dim_category
DROP COLUMN created_by;

ALTER TABLE operations.dim_category
DROP COLUMN created_on;

ALTER TABLE operations.dim_category
ALTER COLUMN category_name SET OPTIONS(
description = '');

ALTER TABLE operations.dim_category
ALTER COLUMN description SET OPTIONS(
description = '');

ALTER TABLE operations.dim_category
 SET OPTIONS(
description = '');

ALTER TABLE operations.dim_product
DROP COLUMN created_by;

ALTER TABLE operations.dim_product
DROP COLUMN created_on;

ALTER TABLE operations.dim_product
DROP COLUMN Testing Column;

DROP TABLE operations.dim_product;

-- ************************************** operations.dim_product

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

ALTER TABLE operations.dim_product
 SET OPTIONS(
description = '');

ALTER TABLE operations.dim_supplier
DROP COLUMN created_by;

ALTER TABLE operations.dim_supplier
DROP COLUMN created_on;

ALTER TABLE operations.dim_supplier
 SET OPTIONS(
description = '');

ALTER TABLE operations.dim_channel
DROP COLUMN created_by;

ALTER TABLE operations.dim_channel
DROP COLUMN created_on;

DROP TABLE operations.dim_channel;

-- ************************************** operations.dim_channel

-- ************************************** operations.dim_channel

CREATE TABLE operations.dim_channel
(
channel_id   int64 PRIMARY KEY NOT ENFORCED,
channel_name string,
demographics array<struct<age int64, gender string>>
)
OPTIONS(friendly_name = 'channel');

ALTER TABLE operations.dim_channel
 SET OPTIONS(
description = '');

-- ************************************** serge.strct_tbl

CREATE TABLE serge.strct_tbl
(
strct_tbl_id int64 OPTIONS(description = 'An optional INTEGER field'),
struct_col   struct<a array<string> OPTIONS(description = 'A repeated STRING field'), b bool>
)
 PARTITION BY  _PARTITIONDATE 
OPTIONS(expiration_timestamp = TIMESTAMP "2025-01-01T00:00:00.000Z",
partition_expiration_days = 1,
description = 'a table that expires in 2025, with each partition living for 24 hours',
friendly_name = 'strct_tbl');

CREATE TABLE `serge.d-1`
(
id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
name string
)
OPTIONS(friendly_name = 'd-1');

CREATE TABLE `serge_caseInsens.d-1`
(
id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
Name string
)
OPTIONS(friendly_name = 'd-1');

-- ************************************** serge.d1

CREATE TABLE serge.d1
(
id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
name string
)
OPTIONS(friendly_name = 'd1');