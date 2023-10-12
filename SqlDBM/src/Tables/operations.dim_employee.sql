-- ********************************* SqlDBM: BigQuery *********************************
-- * Generated by SqlDBM: Google Big Query Webinar, v29 by retinder.labana@sqldbm.com *



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
