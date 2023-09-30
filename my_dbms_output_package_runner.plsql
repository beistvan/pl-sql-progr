-- execute the public procedure of the package
begin
    my_dbms_output.run;
end;
/

-- simulating dbms_output functionalyty: 
-- just selecting everything from the table
-- output:
-- MESSAGE
-- 3 x 5 = 15
select *
from my_console_output_table
/
