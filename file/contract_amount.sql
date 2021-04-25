SELECT 

sum(case when contract_paydue_type = 'LICS'  and insert_date>='2019-01-01' and insert_date <'2020-01-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_LICS_in_2019,
sum(case when contract_paydue_type = 'LICS' and insert_date>='2020-01-01' and insert_date <'2021-01-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_LICS_in_2020,
sum(case when contract_paydue_type = 'LICS' and insert_date>='2021-01-01' and insert_date <'2021-04-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_LICS_in_2021,

sum(case when contract_paydue_type = 'OM'  and insert_date>='2019-01-01' and insert_date <'2020-01-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_OM_in_2019,
sum(case when contract_paydue_type = 'OM' and insert_date>='2020-01-01' and insert_date <'2021-01-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_OM_in_2020,
sum(case when contract_paydue_type = 'OM' and insert_date>='2021-01-01' and insert_date <'2021-04-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_OM_in_2021,

sum(case when contract_paydue_type = 'IMPL'  and insert_date>='2019-01-01' and insert_date <'2020-01-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_IMPL_in_2019,
sum(case when contract_paydue_type = 'IMPL' and insert_date>='2020-01-01' and insert_date <'2021-01-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_IMPL_in_2020,
sum(case when contract_paydue_type = 'IMPL' and insert_date>='2021-01-01' and insert_date <'2021-04-01' then contract_paydue_amount else null end) as sum_contract_paydue_amount_of_IMPL_in_2021

FROM public.t_contract_paydue
--SUM也和COUNT一样可以使用case when then else 来设置条件