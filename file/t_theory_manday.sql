select department,post_title,

count(case when register_date<='2019-01-01' and (resignation_date is null or resignation_date>='2019-02-01') then 1 else null end) as en_2019_01,
count(case when register_date<='2019-02-01' and (resignation_date is null or resignation_date>='2019-03-01') then 1 else null end) as en_2019_02,
count(case when register_date<='2019-03-01' and (resignation_date is null or resignation_date>='2019-04-01') then 1 else null end) as en_2019_03,
count(case when register_date<='2019-04-01' and (resignation_date is null or resignation_date>='2019-05-01') then 1 else null end) as en_2019_04,
count(case when register_date<='2019-05-01' and (resignation_date is null or resignation_date>='2019-06-01') then 1 else null end) as en_2019_05,
count(case when register_date<='2019-06-01' and (resignation_date is null or resignation_date>='2019-07-01') then 1 else null end) as en_2019_06,
count(case when register_date<='2019-07-01' and (resignation_date is null or resignation_date>='2019-08-01') then 1 else null end) as en_2019_07,
count(case when register_date<='2019-08-01' and (resignation_date is null or resignation_date>='2019-09-01') then 1 else null end) as en_2019_08,
count(case when register_date<='2019-09-01' and (resignation_date is null or resignation_date>='2019-10-01') then 1 else null end) as en_2019_09,
count(case when register_date<='2019-10-01' and (resignation_date is null or resignation_date>='2019-11-01') then 1 else null end) as en_2019_10,
count(case when register_date<='2019-11-01' and (resignation_date is null or resignation_date>='2019-12-01') then 1 else null end) as en_2019_11,
count(case when register_date<='2019-12-01' and (resignation_date is null or resignation_date>='2020-01-01') then 1 else null end) as en_2019_12,

count(case when register_date<='2020-01-01' and (resignation_date is null or resignation_date>='2020-02-01') then 1 else null end) as en_2020_01,
count(case when register_date<='2020-02-01' and (resignation_date is null or resignation_date>='2020-03-01') then 1 else null end) as en_2020_02,
count(case when register_date<='2020-03-01' and (resignation_date is null or resignation_date>='2020-04-01') then 1 else null end) as en_2020_03,
count(case when register_date<='2020-04-01' and (resignation_date is null or resignation_date>='2020-05-01') then 1 else null end) as en_2020_04,
count(case when register_date<='2020-05-01' and (resignation_date is null or resignation_date>='2020-06-01') then 1 else null end) as en_2020_05,
count(case when register_date<='2020-06-01' and (resignation_date is null or resignation_date>='2020-07-01') then 1 else null end) as en_2020_06,
count(case when register_date<='2020-07-01' and (resignation_date is null or resignation_date>='2020-08-01') then 1 else null end) as en_2020_07,
count(case when register_date<='2020-08-01' and (resignation_date is null or resignation_date>='2020-09-01') then 1 else null end) as en_2020_08,
count(case when register_date<='2020-09-01' and (resignation_date is null or resignation_date>='2020-10-01') then 1 else null end) as en_2020_09,
count(case when register_date<='2020-10-01' and (resignation_date is null or resignation_date>='2020-11-01') then 1 else null end) as en_2020_10,
count(case when register_date<='2020-11-01' and (resignation_date is null or resignation_date>='2020-12-01') then 1 else null end) as en_2020_11,
count(case when register_date<='2020-12-01' and (resignation_date is null or resignation_date>='2021-01-01') then 1 else null end) as en_2020_12,

count(case when register_date<='2021-01-01' and (resignation_date is null or resignation_date>='2021-02-01') then 1 else null end) as en_2021_01,
count(case when register_date<='2021-02-01' and (resignation_date is null or resignation_date>='2021-03-01') then 1 else null end) as en_2021_02,
count(case when register_date<='2021-03-01' and (resignation_date is null or resignation_date>='2021-04-01') then 1 else null end) as en_2021_03



FROM t_employee

where resignation_date>'2019-01-01' or resignation_date is null

group by department,post_title

order by department,post_title