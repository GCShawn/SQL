select to_char(invoice.invoice_date,'yyyy') as year_mark, invoice.type_of_invoice, sum(invoice.invoice_amount) as invoice_amount
from (select (case when (tax_rate = 13 or invoice_note like '%软件%') then 'SOFTWARE' else 'IMPL' end ) as type_of_invoice, contract_gid,invoice_date,invoice_amount 
        FROM t_finance_invoice) 
        as invoice--获得开票的类型，开票日期，开票金额
where invoice.contract_gid in (
        select contract_gid 
        from t_contract
        where ((contract_sign_date >= '2021-01-01' and contract_sign_date < '2021-04-01') --合同签署时间
                or (contract_sign_date is null and (contract_effective_date >= '2021-01-01' and contract_effective_date < '2021-04-01')))--合同生效日期 
                and contract_category = 'SALE')--根据合同签署时间以及合同生效日期选择需要的合同GID，开票的信息从这些合同日期里面找
group by invoice.type_of_invoice, year_mark--根据获得开票的类型，年份聚合
order by year_mark



select 
sum(case when contract_paydue_type != 'LICS' and contract_paydue_type != 'SBCT' then contract_paydue_amount else null end) as contract_paydue_type_sum_IMPL,
sum(case when contract_paydue_type = 'LICS' or contract_paydue_type = 'SBCT' then contract_paydue_amount else null end) as contract_paydue_type_sum_SOFTWARE,
sum(contract_paydue_amount) as sum_sum

from t_contract_paydue
where t_contract_paydue.contract_gid in (
        select contract_gid 
        from t_contract
        where ((contract_sign_date >= '2019-01-01' and contract_sign_date < '2020-01-01')
                or (contract_sign_date is null and (contract_effective_date >= '2019-01-01' and contract_effective_date < '2020-01-01')))
                and contract_category = 'SALE')