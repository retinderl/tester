-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v45 by retinder.labana@sqldbm.com *


-- ************************************** testing
CREATE PROCEDURE testing()
  RETURNS VARCHAR not null */ /* UNSUPPORTED_CODE: LANGUAGE SQL AS $$
  var rs = snowflake.execute( { sqlText: 
      `INSERT INTO table1 ("column 1") 
           SELECT 'value 1' AS "column 1" ;`
       } );
  return 'Done.';
  $$;
