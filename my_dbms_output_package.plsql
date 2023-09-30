-- table for our console output simulation like the logging
create table my_console_output_table
( 
  message varchar2(200)
)
/

-- create package spec
create or replace package my_dbms_output
is
    -- define one public procedure
    procedure run;
end;
/

-- create package body
create or replace package body my_dbms_output
is
    -- private my_put_line procedure
    procedure my_put_line(p_message in varchar)
    is
    begin
        insert into my_console_output_table(message) values (p_message);
    end;

    -- private function to return tripple of the input
    function tripple(p_number in number)
    return number
    is
    begin
        return 3 * p_number;
    end;

    -- public procedure for run
    procedure run
    is
    begin
        my_put_line('3 x 5 = ' || tripple(5));
    end;
    
end;
/
