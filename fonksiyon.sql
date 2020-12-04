select substr('Kodluyoruz',1,3) from dual;

select length ('Uzunluk Ölçümü') from dual;

select instr('Oracle_Kodluyruz','d') from dual;

select Lpad('Kodluruz',15,'$') from dual;

select Rpad('Kodluruz',15,'$') from dual;

select Trim('K' from 'Kodluyoruz') from dual;

select Lower('YAÐMUR') from dual;

select upper('tonka') from dual;

select initcap(salon_bolge) from salonlar;

select 'Yaðmur' || ' ' ||'Tonka'  ad_soyad from dual;

select * from musteriler where musterý_adý IN('Sema', 'Hakan', 'Andaç');

select * from musteriler where musterý_adý NOT IN ('Sema', 'Hakan', 'Andaç');

select * from musteriler where dogumtarýhý>'05/01/2018';

select * from musteriler where musteri_adý LIKE('%i%');

select replace('Ýstanbul and Ýzmir','Ý','I') from dual;


