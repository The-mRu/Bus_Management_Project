--category_insert function 
CREATE OR REPLACE FUNCTION public.maintanance_insert(data JSON)
    RETURNS JSON 
AS $BODY$
declare
     
    _category varchar := coalesce((param->>'category')::varchar,'');
   _seats INTEGER :=coalesce( (param->>'seats')::INTEGER,0); 
   _oil NUMERIC:= coalesce((param->>'oil')::NUMERIC,0);
	_salary NUMERIC := coalesce((param->>'salary')::NUMERIC,0);
	
    
	_json jsonb := '{}'::jsonb;
	
begin
    _out := '{}';
	
	INSERT INTO category(category,seats,oil,salary)
		VALUES
 		(_category,_seats,_oil,_salary);
		
end;

$BODY$
LANGUAGE plpgsql;
