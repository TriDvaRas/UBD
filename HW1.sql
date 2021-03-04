DECLARE @base_text AS VARCHAR(16) = '48.3425'; 
DECLARE @base_text2 AS VARCHAR(16) = '2020-11-23'; 
DECLARE @base_int AS INT = 15532; 
DECLARE @base_float AS FLOAT = 100.98;
DECLARE @base_date AS DATE = '2016-08-16';

DECLARE @c_text AS VARCHAR(16) = CONVERT(VARCHAR(16),@base_int),
	@c_text2 AS VARCHAR(16) = CONVERT(VARCHAR(16),@base_date),
	@c_int AS INT = CONVERT(INT,@base_float),
	@c_int2 AS INT = CONVERT(INT,CONVERT(FLOAT,@base_text)),
	@c_float AS FLOAT = CONVERT(FLOAT,@base_text),
	@c_date AS DATE = CONVERT(DATE,@base_text2);

--SELECT @base_text,@base_text2,@base_int,@base_float,@base_date;
SELECT @c_text, @c_text2, @c_int, @c_int2, @c_float, @c_date;


