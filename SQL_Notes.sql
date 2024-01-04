----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- 1. CREATE, UPDATE, DELETE, SELECT OR ALL 
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
create table utwory
(
	id int not null,
	id_plyty int not null,
	id_gatunki int not null,
	id_jezyki_1 int,
	id_jezyki_2 int,
	numer int not null,
	tytul varchar(50),
	czas_h int,
	czas_m int,
	czas_s int,
	rok int,
	ulubiony int,
	notatka varchar(100),
	
	constraint utwory_pk primary key (id),

	constraint utwory_u unique ( id_plyty, numer),
	
	constraint utwory_plyty_fk foreign key ( id_plyty) references plyty (id) 
	on update cascade on delete cascade, --delete p1 -> delete all u from p1 

	constraint utwory_gatunki_fk foreign key ( id_gatunki) references gatunki (id) 
	on update cascade on delete cascade,

	constraint utwory_jezyki_1_fk foreign key ( id_jezyki_1) references jezyki (id) 
	on update cascade on delete set null, --delete j1 -> set null all j1 in u 

	constraint utwory_jezyki_2_fk foreign key ( id_jezyki_2) references jezyki (id) 
	on update cascade on delete set null
);
----------------------------------------------------------------------------------------------------------
alter table artysci
add id_kraje integer not null;

alter table artysci
add constraint artysci_fk foreign key (id_kraje) references kraje(id)
on update cascade
on delete set null;

alter table osoby change column old_c_name new_c_name integer;
----------------------------------------------------------------------------------------------------------
on update cascade; --use always
on delete set null;
on delete delete;
on delete cascade;
----------------------------------------------------------------------------------------------------------
insert into gatunki(id, nazwa)
values (1,'avant-garde');

update kraje
set id_jezyki = 2
where id = 10 or id = 100;

update a
set x=1, y=2, z=3 --modyfikacja wielu kolumn
where id=1;

update kraje
set id_jezyki = 2
where id_jezyki is null;
----------------------------------------------------------------------------------------------------------
drop table kategorie; -- delete metadata + data

alter table kategorie drop nazwa -- delete metadata

delete
from kategorie; --delete data

delete
from zwierzeta
where nazwa = 'czubek';
----------------------------------------------------------------------------------------------------------
from arek a
a.nazwa as imie --alias
----------------------------------------------------------------------------------------------------------
select *
from kraje;

select *
from zwierzeta
where nazwa = 'czubek';

select nazwa
from kraje
where id_jezyki = 3;
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- 2. SELECT WITH WHERE, ORDER, JOIN
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
select k.nazwa
from kraje k
where nazwa >= 'b' and nazwa < 'c'
order by nazwa desc; --asc
----------------------------------------------------------------------------------------------------------
where nazwa like 'B%' /*<=>*/ where nazwa >= 'A' and <='B' --All words start with 'B'
where a.x is null
where a.x is not null
where a.x between 'n' and 'm' /*<=>*/ where a.x >= 'n' and a.x < 'm' 
----------------------------------------------------------------------------------------------------------
order by 2, 1;
order by j.nazwa desc, k.nazwa asc;
----------------------------------------------------------------------------------------------------------
from x inner join y on x.id_y = y.id -- y.id_x = x.id
--xi = yj
from x left outer join y on x.id_y = y.id
--xi = yj
--xi = null
from x right outer join y on x.id_y = y.id
--yj = xi
--yj = null
----------------------------------------------------------------------------------------------------------
select j.nazwa as jezyk, count(k.id) as ile_karajow  -- jezyk, count(k.id) = count(k.id_jezyki)
from jezyki j inner join kraje k on k.id_jezyki = j.id
group by j.nazwa
order by 1;
-- ponieważ zlicza ile krajow ma dany jezyk
select j.nazwa as jezyk, k.nazwa
from jezyki j inner join kraje k on k.id_jezyki = j.id
order by 1;

select p.tytul, count (u.id)
from plyty p inner join utwory u on u.id_plyty = p.id 
group by p.tytul, p.id
order by p.tytul;
----------------------------------------------------------------------------------------------------------
select imie, nazwisko, placa from pracownicy
where placa = (select min(placa) from pracownicy);
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- 3. VIEW
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- Static View
create view v_k_j (ID, kraj, id_jezyki, jezyk)
as
select k.id, k.nazwa,j.id, j.nazwa
from kraje k
left outer join jezyki j on k.ID_jezyki = j.id;

select a.nazwa, v.kraj, v.jezyk
from artysci a
inner join v_k_j v on a.id_kraje = v.id;
----------------------------------------------------------------------------------------------------------
-- Dynamic View = Static View + sum/count/max/min/avarage
create view v_p_cu (id, count_utwory)
as 
select p.id, count(u.id) 
from plyty p
left outer join utwory u on u.id_plyty = p.id 
group by p.id;

select p.tytul, g.nazwa, v.count_utwory
from plyty p
inner join gatunki g on p.id_gatunki = g.id 
inner join v_p_cu v on v.id=p.id
where v.count_utwory>10; --where zamiast having, bo to co jest w widoku traktujemy jak pola statyczne
----------------------------------------------------------------------------------------------------------
drop view v_p_cu
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- 4. SUBQUERIES

-- - Subqueries provide data to the enclosing query.
-- - Subqueries can return individual values or a list of records.
-- - Subqueries must be enclosed with brackets ().
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
--https://www.dofactory.com/sql/subquery
SELECT ProductName
FROM Product
WHERE Id IN
(
	SELECT ProductId
	FROM OrderItem
	WHERE Quantity > 100
)
----------------------------------------------------------------------------------------------------------
select distinct p.ProductName, oi.Quantity
from OrderItem oi
left outer join Product p on p.id = oi.ProductId
where oi.Quantity > 100
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
--https://www.dofactory.com/sql/subquery
SELECT CompanyName, ProductCount =
(
	SELECT COUNT(P.id)
	FROM Product P
	WHERE P.SupplierId = S.Id
)
FROM Supplier 
----------------------------------------------------------------------------------------------------------
SELECT S.CompanyName, COUNT(P.id)
FROM Supplier S
left outer join Product P on P.SupplierId = S.Id
group by S.id, S.CompanyName
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
select imie, nazwisko, placa from pracownicy
where placa =
(
	select min(placa)
	from pracownicy
);
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- ZADANIA DO KOL
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- 1. Wyświetl lstę języków i powiedz w ilu krajach się nimi mówi
select j.nazwa,count(k.id)
from jezyki j
left outer join kraje k on k.id_jezyki=j.id
group by j.nazwa
order by 2 desc;
----------------------------------------------------------------------------------------------------------
-- 2a. Ile jest kolekcji w bazie
select count(k.id)
from kolekcje k;
----------------------------------------------------------------------------------------------------------
-- 2b. Ile jest kolekcji, do których są zapisane płyty
select count(k.id)
from kolekcje k inner join plyty p on p.id_kolekcje=k.id;

--Ile krajow mowi w jakims jezyku
select count(j.id)
from jezyki j inner join plyty p on p.id_jezyki=j.id;

--W ilu różnych jezykach mowia kraje
select count(distinct j.id)
from jezyki j inner join plyty p on p.id_jezyki=j.id;
----------------------------------------------------------------------------------------------------------
-- 2c. Ile jest nieużytych kolekcji
select count (k.id)
from kolekcje k left outer join plyty p on p.id_kolekcje=k.id
where p.id_kolekcje is null;

--Ile jest nieuzytych jezykow
select count(j.id)
from jezyki j left outer join plyty p on p.id_jezyki=j.id
where p.id_jezyki is null;
----------------------------------------------------------------------------------------------------------
-- 3a. Tabela artysci, ile utworow
-- 3b. Podaj artystę o największej liczbie przypisanych do niego utworów
select a.nazwa as imie, count(u.id) as ile_utworow
from artysci a
left outer join wykonawcy w on w.id_artysci=a.id
left outer join utwory u on w.id_utwory=u.id
group by a.id,imie
order by 2 desc
--limit 1 --should work, but it does not
----------------------------------------------------------------------------------------------------------
-- 4. Wyświetl płyty, które mają tylko jednego artystę
select p.tytul, count(distinct w.id_artysci) as ile_a
from plyty p
left outer join utwory u on u.id_plyty=p.id
left outer join wykonawcy w on w.id_utwory=u.id
left outer join artysci a on w.id_artysci=a.id
group by p.id, p.tytul
having count(distinct w.id_artysci) = 1;
-- wykonawcy -> (utwory->plyty, artysci)

-- Proof:
select p.tytul, u.tytul, a.nazwa
from plyty p
left outer join utwory u on u.id_plyty=p.id
left outer join wykonawcy w on w.id_utwory=u.id
left outer join artysci a on w.id_artysci=a.id
order by 1
----------------------------------------------------------------------------------------------------------
-- 5. Wyświetl płyty, dla których przypisany gatunek różni się od gatunków utworów
select distinct p.tytul
from plyty p
left outer join utwory u on u.id_plyty=p.id
where p.id_gatunki != u.id_gatunki
order by 1 asc

-- Proof:
select p.tytul, g1.nazwa, u.tytul, g2.nazwa
from plyty p
left outer join utwory u on u.id_plyty=p.id
left outer join gatunki g1 on g1.id=p.id_gatunki
left outer join gatunki g2 on g2.id=u.id_gatunki
where g1.nazwa != g2.nazwa
order by 1 asc;
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
--UWAGI:
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
1 <- inf
----------------------------------------------------------------------------------------------------------
--Agregacja = Aggregate Functions = avg/sum/count/max/min/avarage
----------------------------------------------------------------------------------------------------------
group by a.x,a.y select a.x,a.y,count(...) --kopiujemy wszystko z selecta, co nie jest agregacją
----------------------------------------------------------------------------------------------------------
 -- cant use "order by ..." in view, because in future we wouldnt be able to sort in view
----------------------------------------------------------------------------------------------------------
where p.tytul >= 'p' --statyczne warunki w where
having sum(u.czas_h) < 10 --dynamiczne warunki w having
----------------------------------------------------------------------------------------------------------
select distinct -- = niepowtarzalnosc wierszy 
group by  --use with aggregate functions
----------------------------------------------------------------------------------------------------------
where v.count_utwory>10; --where zamiast having, bo to co jest w widoku traktujemy jak pola statyczne
----------------------------------------------------------------------------------------------------------
select p.tytul, sum(u.czas_h)*3600 + sum(u.czas_m)*60 + sum(u.czas_s)
from utwory u right outer join plyty p on u.id_plyty = p.id
where p.tytul >= 'p' --statyczne warunki w where
group by p.id, p.tytul --p.id, żeby nie skleić dwóch płyt o tym samym tytule
having sum(u.czas_h)*3600 + sum(u.czas_m)*60 + sum(u.czas_s) < 3000 --dynamiczne warunki w having

-- [EXPLANATION] p.id, żeby nie skleić dwóch płyt o tym samym tytule
-- plyty.tytul != unique -> może być kilka płyt o takiej samej nazwie ale np. inny wykonawca

-- id	nazwa
-- 1	Plyta1
-- 2	Plyta1
-- 3	Plyta2

-- group p.tytul
-- Before	Now
-- Plyta1	Plyta1
-- Plyta1	Plyta2
-- Plyta2

-- group p.id, p.tytul
-- Before	Now
-- Plyta1	Plyta1
-- Plyta1	Plyta1
-- Plyta2	Plyta2
----------------------------------------------------------------------------------------------------------
select ..., ...
from ...
join ... on ... = ...
join ... on ... = ...
where ... 
group by ...
having ...
order by ...
----------------------------------------------------------------------------------------------------------
create view v(...,...)
as
select ..., ...
from ...
join ... on ... = ...
join ... on ... = ...
where ...
group by ...
having ...

select ..., ...
from ...
join ... on ... = ...
join ... on ... = ...
where v.x --where zamiast having, bo to co jest w widoku traktujemy jak pola statyczne
group by
having
order by
----------------------------------------------------------------------------------------------------------
unique musi być not null
primary key musi być not null
----------------------------------------------------------------------------------------------------------
pk nn
u nn
fk
fk nn
-
nn
----------------------------------------------------------------------------------------------------------
select max(id) from jezyki; --chcę dodać nowy język, więc szukam maksymalnego id (26), żeby dodać o jeden większe (27)

--generator
create generator g_jezyki;
set generator g_jezyki to 30;

insert into jezyki(id,nazwa) values(gen_id(g_jezyki,1), 'nowyjezyk');
--g_jezyki += 1
--nowyjezyk id = g_jezyki
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-- (*) UNION
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
select x,y,z from a
union
select x,y,z from b

select x,y,z from a
union all
select x,y,z from b

--union = A+B-(A*B)
--union all = A+B 
--i.e.
select g.nazwa
from gatunki g
left outer join plyty p on p.ID_GATUNKI = g.id
union
select g.nazwa
from gatunki g
left outer join utwory u on u.ID_GATUNKI = g.id
----------------------------------------------------------------------------------------------------------
select extract(year from '2017-06-15');
select extract(month from "2017-06-15");
----------------------------------------------------------------------------------------------------------
select p.tytul, count(distinct w.id_artysci) as ile_a
from wykonawcy w
inner join utwory u on w.id_utwory=u.id
right outer join plyty p on u.id_plyty=p.id
inner join artysci a on w.id_artysci=a.id
group by p.id, p.tytul
having count(distinct w.id_artysci) = 1; --having ile_a = 1; WONT WORK
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
