select distinct people.name as "name",
                (select ifnull(group_concat(veh.cnt), "None")
                 from (
                          select concat(v.name, "=", count(*)) cnt, pv.peopleid pid
                          from people_vehicles pv,
                               vehicles v
                          where (pv.vehicleid = v.vehicleid)
                          group by pid, v.name
                      ) veh
                 where (veh.pid = people.peopleid)
                )           as "vehicles",
                (select ifnull(group_concat(pet.cnt), "None")
                 from (
                          select concat(p.name, "=", count(*)) cnt, pp.peopleid pid
                          from people_pets pp,
                               pets p
                          where (pp.petid = p.petid)
                          group by pid, p.name
                      ) pet
                 where (pet.pid = people.peopleid)
                )           as "pets"
from people
         left join people_vehicles on people_vehicles.peopleid = people.peopleid
         left join vehicles on people_vehicles.vehicleid = vehicles.vehicleid
         left join people_pets on people_pets.peopleid = people.peopleid
         left join pets on people_pets.petid = pets.petid







