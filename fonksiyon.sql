select substr('Kodluyoruz',1,3) from dual;

select length ('Uzunluk �l��m�') from dual;

select instr('Oracle_Kodluyruz','d') from dual;

select Lpad('Kodluruz',15,'$') from dual;

select Rpad('Kodluruz',15,'$') from dual;

select Trim('K' from 'Kodluyoruz') from dual;

select Lower('YA�MUR') from dual;

select upper('tonka') from dual;

select initcap(salon_bolge) from salonlar;

select 'Ya�mur' || ' ' ||'Tonka'  ad_soyad from dual;

select * from musteriler where muster�_ad� IN('Sema', 'Hakan', 'Anda�');

select * from musteriler where muster�_ad� NOT IN ('Sema', 'Hakan', 'Anda�');

select * from musteriler where dogumtar�h�>'05/01/2018';

select * from musteriler where musteri_ad� LIKE('%i%');

select replace('�stanbul and �zmir','�','I') from dual;


