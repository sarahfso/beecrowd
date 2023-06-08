--creating and populating problem tables

create table prices (
	id numeric primary key, 
	categorie varchar(20), 
	value numeric
);

insert into prices (id, categorie, value) values (1, 'Releases', 3.50);
insert into prices (id, categorie, value) values (2, 'Bronze Seal', 2.00);
insert into prices (id, categorie, value) values (3, 'Silver Seal', 2.50);
insert into prices (id, categorie, value) values (4, 'Gold Seal', 3.00);
insert into prices (id, categorie, value) values (5, 'Promotion', 1.50);

create table movies (
	id numeric primary key, 
	name varchar,
	id_prices numeric,
	constraint fk_prices
	foreign key (id_prices)
	references prices(id)
);

insert into movies (id, name, id_prices) values (1, 'Batman', 3);
insert into movies (id, name, id_prices) values (2, 'The Battle of the Dark River', 3);
insert into movies (id, name, id_prices) values (3, 'White Duck', 5);
insert into movies (id, name, id_prices) values (4, 'Breaking Barriers', 4);
insert into movies (id, name, id_prices) values (5, 'The Two Hours', 2);

--solution

select id, name 
from movies 
where id_prices = (
    select id
    from prices
    where value < 2.00
);
 