-- ******************************* SqlDBM: BigQuery ******************************
-- * Generated by SqlDBM: Google Big Query Webinar by retinder.labana@sqldbm.com *



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
