select user_id as seller_id, (case when favorite_brand = item_brand then 'yes'
                             else 'no' end) as '2nd_item_fav_brand' from users

left join (select * from (select item_brand, seller_id, row_number() over (partition by seller_id order by order_date) as order_num from orders
left join items on orders.item_id = items.item_id) as tb1
where tb1.order_num = 2) as tb2
on tb2.seller_id = users.user_id
