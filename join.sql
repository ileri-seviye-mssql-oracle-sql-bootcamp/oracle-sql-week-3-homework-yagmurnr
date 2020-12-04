--M��teriad� yal��m olanlar�n salon isimlerini getirmesi

SELECT m.muster�_ad�,m.muster�_soyad� ,s.salon_ad� FROM musteriler m 
INNER JOIN salonlar S ON M.MUS_SALON_ID=S.SALON_ID WHERE m.MUSTERI_ADI='Yal��n';

SELECT * FROM salonlar;
SELECT * FROM muster�ler;
select * from ogretmenler;


--'05/01/2018'  ve  '16/01/2018' tarihleri aras�nda do�an m��terilerin salon b�lgerini getirmesi

select  m.musteri_adi, m.dogumtarihi,s.salon_bolge from ogretmenler o 
inner join musteriler m on o.og_id=m.mus_og_id
inner join salonlar s on m.mus_salon_id=s.salon_id where m.dogumtarihi between '05/01/2018'  and  '16/01/2018';


-- salon b�lgesi TUZLA olan m��terilerin isimlerini z-a ya s�ralay�n
SELECT * FROM salonlar;
SELECT * FROM muster�ler;
select * from ogretmenler

SELECT * FROM salonlar s 
inner join musteriler m on s.salon_id=m.mus_salon_id
where salon_bolge='TUZLA' ORDER by MUSTERI_ADI desc;


--bireysel derslere kat�lan m��terilerin ka� edet oldu�unu g�sterme


select o.OG_CES�D� , COUNT(m.musteri_adi) from ogretmenler o 
inner join musteriler m on o.og_id=m.mus_og_id
inner join salonlar s on m.mus_salon_id=s.salon_id 
where o.OG_CES�D� ='B�REYSEL' GROUP BY o.OG_CES�D�;

