create database db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(100),
habilidade varchar(150),
primary key (id)
);

insert into tb_classe (nome, habilidade) values ("Feiticeiro", "Magia");
insert into tb_classe (nome, habilidade) values ("Arqueiro", "Usar arco e flecha");
insert into tb_classe (nome, habilidade) values ("Espadachim", "Lutar com espada");
insert into tb_classe (nome, habilidade) values ("Cavaleiro", "Cavalgar");
insert into tb_classe (nome, habilidade) values ("Ninja", "Ataque Silencioso");

create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
biografia varchar(200),
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Monkona", "Mago", 2100, 100, 1);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Minseok", "Sabio", 3000, 2800, 1);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Junmyeon", "lider", 2000, 2000, 2);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Baekhyun", "Alegre", 1000, 1500, 3);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Jongdae", "Protetor", 1300, 1110, 4);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Chanyeol", "animado", 2300, 3000, 5);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Kyungsoo", "centrado", 1800, 2200, 1);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Jongion", "estrela", 1300, 850, 2);
insert into tb_personagens (nome, biografia, ataque, defesa, classe_id) values ("Sehun", "aprendiz", 2100, 900, 3);

select * from tb_personagens;

select * from tb_classes;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.id;  









