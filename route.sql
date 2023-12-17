

--route_insert function 
CREATE OR REPLACE FUNCTION public.route_insert(data JSON)
    RETURNS JSON 
AS $BODY$
DECLARE
    _route_name varchar := COALESCE((data->>'route_name')::varchar, '');
    _distance NUMERIC := COALESCE((data->>'distance')::NUMERIC, 0);
BEGIN
    INSERT INTO route(route_name, distance)
    VALUES (_route_name, _distance);

    RETURN JSON_BUILD_OBJECT('success', 'success');
END;
$BODY$
LANGUAGE plpgsql;

---query
SELECT public.route_insert(
    '{"route_name":"noton bridge","distance":30}'::json
);

-- Check the result
SELECT * FROM route;