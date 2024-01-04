-- 1. wyświetl, ile jest dlc dla danej gry
select g.nazwa as nazwa_gry, count(g_dlc.id_gry_podstawowej) as ile_dlc from gry g
left outer join gry g_dlc on g.id = g_dlc.id_gry_podstawowej
where g.id_gry_podstawowej is null
group by g.id, g.nazwa
------------------------------------------------------------------
-- wyswietla srednia ocen wydan dla pc
-- select g.nazwa || ', ' || w.notatka as nazwa_wydania,/*p.nazwa as nazwa_platformy,*/ avg(o.ocena) as avg_ocena
-- from wydania w left outer join oceny o on o.id_wydania = w.id
-- inner join wydania_gry wg on wg.id_wydania = w.id
-- inner join gry g on wg.id_gry = g.id
-- /*inner join platformy p on w.id_platformy = p.id*/
-- where g.id_gry_podstawowej is null and w.id_platformy = 1
-- group by w.id, nazwa_wydania/*, nazwa_platformy*/
-- order by avg_ocena desc
------------------------------------------------------------------
--2. wyświetl, ile gier w wersjach podstawowych jest danego gatunku
select gatunki.nazwa as gatunek, count(gry.id) as ile_gier
from gry_gatunki
inner join gry on gry.id = gry_gatunki.id_gry
inner join gatunki on gatunki.id = gry_gatunki.id_gatunki
where gry.id_gry_podstawowej is null
group by gatunki.id, gatunki.nazwa;
------------------------------------------------------------------
--3. wyświetl, jakie gatunki mają gry w wersji podstawowej
select gry.nazwa as gra, gatunki.nazwa as gatunek
from gry_gatunki
inner join gry on gry.id = gry_gatunki.id_gry
inner join gatunki on gatunki.id = gry_gatunki.id_gatunki
where gry.id_gry_podstawowej is null
order by 1 asc;
------------------------------------------------------------------
--4. stwórz widok porównujące średnie oceny wydań na różne platformy
create view v1_w (id, wydanie, platforma, typ_wydania, ocena_avg)
as
select w.id, w.nazwa, p.nazwa, t_w.nazwa, avg(o.ocena) 
from wydania_gry w_g
inner join wydania w on w.id = w_g.id_wydania
inner join gry g on g.id = w_g.id_gry
left outer join platformy p on p.id = w.id_platformy
left outer join oceny o on o.id_wydania = w.id
left outer join typy_wydania t_w on t_w.id = w.id_typy_wydania
group by w.id, w.nazwa, t_w.nazwa, p.nazwa
------------------------------------------------------------------
--5. wyświetl gry na pc o ocenie większej równej osiem oraz ich ceny
select v1_w.wydanie, v1_w.typ_wydania, w.cena_na_premiere as cena, v1_w.ocena_avg
from v1_w
inner join wydania w on v1_w.id = w.id
where platforma = 'PC' and v1_w.ocena_avg >= 8
order by ocena_avg desc
------------------------------------------------------------------
--6. wyświetl średnie oceny recenzentów, żeby wykazać, który z nich daje średnio najniższe noty
select r.nazwa as recenzent, avg(o.ocena) as ocena_avg
from recenzenci r
left outer join oceny o on o.id_recenzenci = r.id
group by r.id, r.nazwa
order by 2 asc
------------------------------------------------------------------
--7. wyświetl sumaryczny czas gry podstawowej i jej wszystkich dlc
select nazwa as gra, sum(srednia_dlugosc_w_h) as sum_czas_gry_podst_i_jej_dlc
from
(
select nazwa, srednia_dlugosc_w_h
from gry
where id_gry_podstawowej is null
union all
select g_podst.nazwa, g_dlc.srednia_dlugosc_w_h
from gry g_dlc
left outer join gry g_podst on g_podst.id = g_dlc.id_gry_podstawowej
where g_dlc.id_gry_podstawowej is not null
)
group by nazwa
order by 1 asc
------------------------------------------------------------------
--8. stwórz widok, pokazujący, ile gier dla różnych kategorii wiekowych stworzyli producenci
create view v2_f (id, producent, kategorie_wiekowe_pegi, ile_g)
as
select f.id, f.nazwa, k_w_p.nazwa, count(g.id)
from producenci_gry p_g
inner join gry g on g.id = p_g.id_gry 
inner join firmy f on f.id = p_g.id_firmy 
left outer join kategorie_wiekowe_pegi k_w_p on k_w_p.id = g.id_kategorie_wiekowe_pegi
group by f.id, f.nazwa, k_w_p.nazwa
------------------------------------------------------------------
--9. wyświetl producentów, którzy stworzyli mniej niż cztery gry, ale przynajmniej jedną w danej kategorii wiekowej
select v2_f.producent as producent, v2_f.kategorie_wiekowe_pegi as pegi, v2_f.ile_g as ile_gier
from v2_f
where v2_f.ile_g < 4 and v2_f.ile_g >=1
order by producent asc, pegi asc
------------------------------------------------------------------
-- 10. wyświetl wydania, które mają tylko jedne multimedia
select v1_w.wydanie as wydanie, v1_w.typ_wydania as typ_wydania, count(m.id)  as ile_multimediow
from wydania_multimedia w_m
inner join multimedia m on m.id = w_m.id_multimedia
right outer join v1_w on v1_w.id = w_m.id_wydania
group by wydanie, typ_wydania
having count(m.id) = 1
------------------------------------------------------------------
--11. wyświetl wydania, które zostały stworzone w klatach 2016 - 2019
select distinct w.rok_wydania, v1_w.wydanie, v1_w.typ_wydania
from v1_w
inner join wydania w on v1_w.id = w.id
where rok_wydania between 2016 and 2019
order by w.rok_wydania asc, v1_w.wydanie asc
------------------------------------------------------------------
--
