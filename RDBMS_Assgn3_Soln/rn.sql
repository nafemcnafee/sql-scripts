accept p_year prompt 'Year: '
set termout off
variable g_out varchar2(200)

declare
	v_year varchar2(20);
begin
	select to_char(&p_year,'RN') 
	  into v_year 
	  from dual;
	:g_out := v_year;
end;
/
set termout on
set heading off
set pause off
print g_out
set heading on
set pause on

