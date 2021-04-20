select string_agg(column_name||'' , ',') from
	(SELECT	column_name,data_type,character_maximum_length,numeric_precision,numeric_scale
	FROM information_schema.columns
	WHERE table_schema = 'public' and table_name='t_dingding_record'
	GROUP BY column_name,data_type,character_maximum_length,numeric_precision,numeric_scale) as columns_names
