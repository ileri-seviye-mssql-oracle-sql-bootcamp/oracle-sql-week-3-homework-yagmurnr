
-- müþteriler tablosunda olup salonlar tablosunda olmayan

select m.mus_salon_ýd from musterýler m
minus
select s.salon_ýd from salonlar s;

select * from musteriler;

--iki select ifadesindeki kesiþim

select m.mus_salon_ýd from musterýler m
intersect
select s.salon_ýd from salonlar s;

select * from musteriler;
select * from ogretmenler;
select * from salonlar;

--

--müþterilerdeki kullanýlan öðretmenlerin idleri

select * from(
select m.mus_og_id from musterýler m
union
select o.og_id from ogretmenler o)
order by mus_og_id;
--

--müþterilerdeki öðretmen idlerinin kaç kere kullanýldýðýný saydýrýyor

select  count(mus_og_id)  from(
select m.mus_og_id from musterýler m
union all
select o.og_id from ogretmenler o)
group by mus_og_id;



