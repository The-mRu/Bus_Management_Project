--maintanance_insert function 
CREATE OR REPLACE FUNCTION public.maintanance_insert(data JSON)
    RETURNS JSON 
AS $BODY$
DECLARE
    _bus_id varchar := COALESCE((data->>'bus_id')::varchar, '');
    _driver_id varchar := COALESCE((data->>'driver_id')::varchar, '');
    _issue varchar := COALESCE((data->>'issue')::varchar, '');
    _estimated_cost NUMERIC := COALESCE((data->>'estimated_cost')::NUMERIC, 0);
    _issue_date date := COALESCE((data->>'date')::date, '2023-12-12');
    _solved_status varchar := COALESCE((data->>'solved_status')::varchar, '');
BEGIN
    INSERT INTO maintanance(bus_id, driver_id, issue, estimated_cost, issue_date, solved_status)
    VALUES (_bus_id, _driver_id, _issue, _estimated_cost, _issue_date, _solved_status);

    RETURN JSON_BUILD_OBJECT('success', 'success');
END;
$BODY$
LANGUAGE plpgsql;

--query
SELECT public.maintanance_insert(
    '{"driver_id":"1","bus_id":"01","issue":"Looking glass","estimated_cost":300,"date":"2023-12-14","solved_status":"working"}'::json
);

-- Check the result
SELECT * FROM maintanance;