-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v27 by retinder.labana@sqldbm.com *



-- ************************************** operations.dim_time

CREATE TABLE operations.dim_time
(
time_id       int64 NOT NULL PRIMARY KEY NOT ENFORCED,
date          date,
hour          int64,
day_of_week   string,
time_segments array<struct<start_time time, end_time time>>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'time');


-- ************************************** ABC.operations.dim_time

CREATE TABLE ABC.operations.dim_time
(
date          date,
hour          int64,
day_of_week   string,
time_segments struct<start_time time, end_time struct<start_time time, end_time array<struct<start_time time, end_time time>>>>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'time');


-- ************************************** ABC.operations.dim_supplier

CREATE TABLE ABC.operations.dim_supplier
(
supplier_id    int64,
supplier_name  string,
contact_person string,
address        struct<street string, city string, state string, country string>,
payment_terms  array<string>,
created_by     string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on     timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'supplier');


-- ************************************** ABC.operations.dim_product

CREATE TABLE ABC.operations.dim_product
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


-- ************************************** ABC.operations.dim_location

CREATE TABLE ABC.operations.dim_location
(
location_id int64 NOT NULL PRIMARY KEY NOT ENFORCED,
country     string,
city        string,
coordinates struct<latitude float64, longitude float64>,
created_by  string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on  timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'location');


-- ************************************** ABC.operations.dim_employee

CREATE TABLE ABC.operations.dim_employee
(
employee_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
employee_name string,
role          string,
skills        array<string>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(friendly_name = 'dim employee');


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


-- ************************************** operations.dim_product

CREATE TABLE operations.dim_product
(
product_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
product_name string,
category     string,
price        float64,
attributes   struct<weight float64, dimensions struct<length float64, width float64, height float64>>,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'product list and its specs',
friendly_name = 'product');


-- ************************************** operations.dim_location

CREATE TABLE operations.dim_location
(
location_id int64 NOT NULL PRIMARY KEY NOT ENFORCED,
country     string,
city        string,
coordinates struct<latitude float64, longitude float64>,
created_by  string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on  timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'List of locations and it''s details',
friendly_name = 'location');


-- ************************************** operations.dim_employee

CREATE TABLE operations.dim_employee
(
employee_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
employee_name string,
role          string,
skills        array<string>,
created_by    string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on    timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'Employee List',
friendly_name = 'employee');


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


-- ************************************** operations.dim_channel

CREATE TABLE operations.dim_channel
(
channel_id   int64 NOT NULL PRIMARY KEY NOT ENFORCED,
channel_name string,
demographics array<struct<age int64, gender string>>,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite"
)
OPTIONS(description = 'Channel list and locations',
friendly_name = 'channel');


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


-- ************************************** ABC.operations.fact_sales

CREATE TABLE ABC.operations.fact_sales
(
sale_id     int64 NOT NULL PRIMARY KEY NOT ENFORCED,
quantity    int64,
price       float64,
customer_id int64,
product_id  int64,
created_by  string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on  timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite",
 CONSTRAINT FK_fact_sales_1 FOREIGN KEY (customer_id) REFERENCES ABC.operations.dim_customer (customer_id) NOT ENFORCED,
 CONSTRAINT FK_fact_sales_2 FOREIGN KEY (product_id) REFERENCES ABC.operations.dim_product (product_id) NOT ENFORCED
)
OPTIONS(friendly_name = 'sales');


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


-- ************************************** operations.fact_sales

CREATE TABLE operations.fact_sales
(
sale_id     int64 NOT NULL PRIMARY KEY NOT ENFORCED,
quantity    int64,
price       float64,
customer_id int64,
product_id  int64,
time_id     int64,
created_by  string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on  timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite",
 CONSTRAINT FK_fact_sales_1 FOREIGN KEY (customer_id) REFERENCES operations.dim_customer (customer_id) NOT ENFORCED,
 CONSTRAINT FK_fact_sales_2 FOREIGN KEY (product_id) REFERENCES operations.dim_product (product_id) NOT ENFORCED,
 CONSTRAINT FK_fact_sales_3 FOREIGN KEY (time_id) REFERENCES operations.dim_time (time_id) NOT ENFORCED
)
OPTIONS(friendly_name = 'fact sales');


-- ************************************** operations.fact_inventory

CREATE TABLE operations.fact_inventory
(
inventory_id int64 NOT NULL PRIMARY KEY NOT ENFORCED,
quantity     int64,
location_id  int64,
product_id   int64,
created_by   string NOT NULL OPTIONS(description = 'user who created the entery'), -- From template: "meta_data_inherite"
created_on   timestamp NOT NULL OPTIONS(description = 'timestamps when the entry was created') -- From template: "meta_data_inherite",
 CONSTRAINT FK_fact_inventory_2 FOREIGN KEY (location_id) REFERENCES operations.dim_location (location_id) NOT ENFORCED,
 CONSTRAINT FK_fact_inventory_1 FOREIGN KEY (product_id) REFERENCES operations.dim_product (product_id) NOT ENFORCED
)
OPTIONS(friendly_name = 'inventory');

