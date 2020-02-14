with first_login as (select distinct user_id, min(activity_date) as f_login from traffic
                     where activity='login'
                     group by user_id)
select f_login as login_date, count(user_id) as user_count from first_login
where datediff(day, f_login,'2019-06-30') <= 90
group by f_login
