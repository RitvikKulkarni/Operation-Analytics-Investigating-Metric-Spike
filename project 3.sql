create database Project_3;

use project_3; 

select *
from users ; 

select *
from events ;

load data infile "D:/SQL/Trainity/Project 3/Table-2 events.csv" into table events
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows ;

select count(user_id)
from events ;

select *
from email_events ;

select *
from users inner join email_events
using (User_id);

SELECT 
    MONTHNAME(occurred_at) AS _week,
    COUNT(event_name) AS engagement
FROM
    events
GROUP BY _week;

select year(created_at) as Month,
count(user_id) as total
from users 
group by month;

select year(occurred_at) as _month ,action, count(user_id) as Engage_metrics
from email_events 
group by _month, action;




