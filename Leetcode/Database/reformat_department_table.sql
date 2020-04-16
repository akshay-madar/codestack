select id,
	       sum(if(month = 'jan', revenue, null)) as jan_revenue,
	       sum(if(month = 'feb', revenue, null)) as feb_revenue,
	       sum(if(month = 'mar', revenue, null)) as mar_revenue,
	       sum(if(month = 'apr', revenue, null)) as apr_revenue,
	       sum(if(month = 'may', revenue, null)) as may_revenue,
	       sum(if(month = 'jun', revenue, null)) as jun_revenue,
	       sum(if(month = 'jul', revenue, null)) as jul_revenue,
	       sum(if(month = 'aug', revenue, null)) as aug_revenue,
	       sum(if(month = 'sep', revenue, null)) as sep_revenue,
	       sum(if(month = 'oct', revenue, null)) as oct_revenue,
	       sum(if(month = 'nov', revenue, null)) as nov_revenue,
	       sum(if(month = 'dec', revenue, null)) as dec_revenue
	from   department
	group  by id;


	select * from Department
	pivot(
	sum(revenue)
	for month in ('Jan' "Jan_Revenue",
	'Feb' "Feb_Revenue",
	'Mar' "Mar_Revenue",
	'Apr' "Apr_Revenue",
	'May' "May_Revenue",
	'Jun' "Jun_Revenue",
	'Jul' "Jul_Revenue",
	'Aug' "Aug_Revenue",
	'Sep' "Sep_Revenue",
	'Oct' "Oct_Revenue",
	'Nov' "Nov_Revenue",
	'Dec' "Dec_Revenue")
	)


	SELECT * FROM
	(
	SELECT
	id, revenue, month + '_Revenue' as month
	FROM
	department
	) rev
	PIVOT(
	max(revenue)
	for month IN (
	Jan_Revenue,
	Feb_Revenue,
	Mar_Revenue,
	Apr_Revenue,
	May_Revenue,
	Jun_Revenue,
	Jul_Revenue,
	Aug_Revenue,
	Sep_Revenue,
	Oct_Revenue,
	Nov_Revenue,
	Dec_Revenue)
	) AS month_rev
