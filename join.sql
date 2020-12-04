--Müþteriadý yalçým olanlarýn salon isimlerini getirmesi

SELECT m.musterý_adý,m.musterý_soyadý ,s.salon_adý FROM musteriler m 
INNER JOIN salonlar S ON M.MUS_SALON_ID=S.SALON_ID WHERE m.MUSTERI_ADI='Yalçýn';

SELECT * FROM salonlar;
SELECT * FROM musterýler;
select * from ogretmenler;


--'05/01/2018'  ve  '16/01/2018' tarihleri arasýnda doðan müþterilerin salon bölgerini getirmesi

select  m.musteri_adi, m.dogumtarihi,s.salon_bolge from ogretmenler o 
inner join musteriler m on o.og_id=m.mus_og_id
inner join salonlar s on m.mus_salon_id=s.salon_id where m.dogumtarihi between '05/01/2018'  and  '16/01/2018';


-- salon bölgesi TUZLA olan müþterilerin isimlerini z-a ya sýralayýn
SELECT * FROM salonlar;
SELECT * FROM musterýler;
select * from ogretmenler

SELECT * FROM salonlar s 
inner join musteriler m on s.salon_id=m.mus_salon_id
where salon_bolge='TUZLA' ORDER by MUSTERI_ADI desc;


--bireysel derslere katýlan müþterilerin kaç edet olduðunu gösterme


select o.OG_CESÝDÝ , COUNT(m.musteri_adi) from ogretmenler o 
inner join musteriler m on o.og_id=m.mus_og_id
inner join salonlar s on m.mus_salon_id=s.salon_id 
where o.OG_CESÝDÝ ='BÝREYSEL' GROUP BY o.OG_CESÝDÝ;

