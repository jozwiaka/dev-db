create table firmy
(
    id int not null,
    nazwa varchar(50) not null,
    constraint firmy_pk primary key (id),
    constraint firmy_nazwa_u unique (nazwa)
);

create table platformy
(
    id int not null,
    nazwa varchar(50) not null,
    constraint platformy_pk primary key (id),
    constraint platformy_nazwa_u unique (nazwa)
);

create table gatunki
(
    id int not null,
    nazwa varchar(50) not null,
    constraint gatunki_pk primary key (id),
    constraint gatunki_nazwa_u unique (nazwa)
);

create table kategorie_wiekowe_pegi
(
    id int not null,
    nazwa varchar(7) not null,
    constraint kategorie_wiekowe_pegi_pk primary key (id),
    constraint kategorie_wiekowe_pegi_nazwa_u unique (nazwa)
);

create table recenzenci
(
    id int not null,
    nazwa varchar(50) not null,
    constraint recenzenci_pk primary key (id),
    constraint recenzenci_nazwa_u unique (nazwa)
);

create table multimedia
(
    id int not null,
    link varchar(500) not null,
    constraint multimedia_pk primary key (id),
    constraint multimedia_u unique(link)
);

create table typy_wydania
(
    id int not null,
    nazwa varchar(75) not null,
    constraint typy_wydania_pk primary key (id)
    constraint typy_wydania_u unique(nazwa)
);

create table gry
(
    id int not null,
    nazwa varchar(75) not null,
    id_kategorie_wiekowe_pegi int not null,
    srednia_dlugosc_w_h int not null,
    id_gry_podstawowej int,
    notatka varchar(500),
    constraint gry_pk primary key (id),
    constraint gry_kategorie_wiekowe_pegi_fk foreign key (id_kategorie_wiekowe_pegi) references kategorie_wiekowe_pegi (id) on update cascade on delete cascade,
    constraint gry_gry_podstawowej_fk foreign key(id_gry_podstawowej) references gry (id) on update set null on delete cascade
);

create table gry_gatunki
(
    id int not null,
    id_gry int not null,
    id_gatunki int not null,
    constraint gry_gatunki_pk primary key (id),
    constraint gry_gatunki_gry_fk foreign key (id_gry) references gry (id) on update cascade on delete cascade,
    constraint gry_gatunki_gatunki foreign key (id_gatunki) references gatunki (id) on update cascade on delete cascade,
    constraint gry_gatunki_u unique (id_gry,id_gatunki)
);

create table producenci_gry
(
    id int not null,
    id_gry int not null,
    id_firmy int not null,
    constraint producenci_gry_pk primary key (id),
    constraint producenci_gry_gry_fk foreign key (id_gry) references gry (id) on update cascade on delete cascade,
    constraint producenci_gry_firmy_fk foreign key (id_firmy) references firmy (id) on update cascade on delete cascade,
    constraint producenci_gry_u unique (id_gry,id_firmy)
);

create table wydania
(
    id int not null,
    nazwa varchar(75) not null,
    id_typy_wydania int not null,
    id_firmy int not null,
    id_platformy int not null,
    rok_wydania int not null,
    cena_na_premiere decimal(5,2) not null,
    notatka varchar(500),
    constraint wydania_pk primary key (id),
    constraint wydania_typy_w_fk foreign key (id_typy_wydania) references typy_wydania (id) on update cascade on delete cascade,
    constraint wydania_firmy_fk foreign key (id_firmy) references firmy (id) on update cascade on delete cascade,
    constraint wydania_platformy_fk foreign key (id_platformy) references platformy (id) on update cascade on delete cascade,
    constraint wydania_u unique(nazwa,id_typy_wydania, id_firmy, id_platformy, rok_wydania)
);

create table wydania_gry
(
    id int not null,
    id_wydania int not null,
    id_gry int not null,
    constraint wydania_gry_pk primary key (id),
    constraint wydania_gry_wydania_fk foreign key (id_wydania) references wydania (id) on update cascade on delete cascade,
    constraint wydania_gry_gry_fk foreign key (id_gry) references gry (id) on update cascade on delete cascade,
    constraint wydania_gry_u unique (id_gry,id_wydania)
);

create table oceny
(
    id int not null,
    id_wydania int not null,
    id_recenzenci int not null,
    ocena decimal(2,1) not null,
    komentarz varchar(500),
    constraint oceny_pk primary key (id),
    constraint oceny_wydania_fk foreign key (id_wydania) references wydania (id) on update cascade on delete cascade,
    constraint oceny_recenzenci_fk foreign key (id_recenzenci) references recenzenci (id) on update cascade on delete cascade,
    constraint oceny_u unique (id_wydania,id_recenzenci)
);

create table wydania_multimedia
(
    id int not null,
    id_wydania int not null,
    id_multimedia int not null,
    constraint wydania_multimedia_pk primary key (id),
    constraint wydania_multimedia_wydania_fk foreign key (id_wydania) references wydania (id) on update cascade on delete cascade,
    constraint wydania_multimedia_multmedia_fk foreign key (id_multimedia) references multimedia (id) on update cascade on delete cascade,
    constraint wydania_multimedia_u unique (id_wydania,id_multimedia)
);
