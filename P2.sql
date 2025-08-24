use bookmyshow;

select 
    t.name as theatre_name,
    m.title as movie_title,
    s.screen_name,
    sh.show_date,
    sh.show_time
from showdetails sh
join screen s on sh.screen_id = s.screen_id
join theatre t on s.theatre_id = t.theatre_id
join movie m on sh.movie_id = m.movie_id
where t.name = 'pvr cinemas'
  and sh.show_date = '2025-08-24'
order by sh.show_time;
