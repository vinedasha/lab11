
CREATE FUNCTION mysum2(a INTEGER, b INTEGER, c INTEGER)
	RETURNS INTEGER
	LANGUAGE pllua AS
$$
	local d = (a + b) * c
	return d
$$;

SELECT mysum2(x, y, 5) FROM test;
