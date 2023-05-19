create database formativa;
use formativa;

create table users(
id bigint not null auto_increment,
name_user varchar(100),
email varchar (200),
phone int,
birdaydate date not null,
senha varchar (15),
hire_date datetime,
cpf varchar(12),
primary key (id) 
);

create table locais (
id bigint not null auto_increment,
sala varchar (10) not null ,
bloco varchar (10)  not null,
capact int not null,
primary key (id)
);

insert into eventos
(locaisFK,numero_de_participantes,nome_do_evento,responsavel) 
value 
(1,15,'bd mysql', 'andre')
;
select *from eventos;
create table checklist(
id bigint not null auto_increment,
item varchar(100),
primary key (id)
);

create table cheklist_sala(
id bigint not null auto_increment,
intemFK bigint not null,
locaisFk bigint not null,
intens_list bool not null,
primary key (id),
foreign key (intemFK) references checklist(id),
foreign key (locaisFK) references locais(id)
);


create table reservas (
id bigint not null auto_increment,
usersFK bigint not null,
eventoFK bigint not null,
primary key (id),
foreign key (usersFK) references users(id),
foreign key (eventoFk) references eventos(id)
);

create table eventos(
id bigint not null auto_increment,
locaisFK bigint not null,
incio_hora_marcada datetime,
final_do_evento datetime,
numero_de_participantes varchar (4),
nome_do_evento varchar(100),
responsavel varchar(100),
primary key (id),
foreign key (locaisFK) references locais(id)
);

create table user_class(
id bigint not null auto_increment,
usersFK bigint not null,
adimin_class varchar(10),
gestor_class varchar(10),
user_class varchar (10),
vist_class varchar (10),
primary key (id),
foreign key (usersFK) references users(id)
);

create table status(
id bigint not null auto_increment,
status_id bool not null,
usersFK bigint not null,
primary key (id),
foreign key (usersFK) references users(id)
);