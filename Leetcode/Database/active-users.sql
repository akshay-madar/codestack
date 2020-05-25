Select id, name From Accounts
Where id in (
Select distinct id From (
Select id, login_date,
lead(login_date,4) over (partition by id order by login_date) as lead_date
from (Select distinct id, login_date From Logins) as S

) as T
Where DATEDIFF(lead_date, login_date) = 4)
Order by id
