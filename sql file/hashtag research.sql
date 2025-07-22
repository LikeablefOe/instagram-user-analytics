# Hashtag Research

use ig_clone;

select tags.tag_name,count(*) as total_tags
from photo_tags
join
tags on photo_tags.tag_id = tags.id
group by tags.id
order by total_tags DESC
limit 5;
