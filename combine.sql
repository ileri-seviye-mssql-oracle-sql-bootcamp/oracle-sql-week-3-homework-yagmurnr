
-- m��teriler tablosunda olup salonlar tablosunda olmayan

select m.mus_salon_�d from muster�ler m
minus
select s.salon_�d from salonlar s;

select * from musteriler;

--iki select ifadesindeki kesi�im

select m.mus_salon_�d from muster�ler m
intersect
select s.salon_�d from salonlar s;

select * from musteriler;
select * from ogretmenler;
select * from salonlar;

--

--m��terilerdeki kullan�lan ��retmenlerin idleri

select * from(
select m.mus_og_id from muster�ler m
union
select o.og_id from ogretmenler o)
order by mus_og_id;
--

--m��terilerdeki ��retmen idlerinin ka� kere kullan�ld���n� sayd�r�yor

select  count(mus_og_id)  from(
select m.mus_og_id from muster�ler m
union all
select o.og_id from ogretmenler o)
group by mus_og_id;



