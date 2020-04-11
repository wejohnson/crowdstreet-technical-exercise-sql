select people.name as "name"
from people
where exists(select count(*)
             from people p,
                  people_vehicles pv
             where p.peopleid = pv.peopleid
               and p.peopleid = people.peopleid
             group by p.peopleid
             having count(*) >= 2)
   or exists(select count(*)
             from people p,
                  people_pets pp
             where p.peopleid = pp.peopleid
               and p.peopleid = people.peopleid
             group by p.peopleid
             having count(*) >= 2)