create database bd_mocca character set utf8 collate utf8_general_ci;

create table if not exists comentarios (
id bigint auto_increment not null,
post_id bigint,
comentario text,
nome_imagem varchar(25),
tamanho_imagem varchar(25),
tipo_imagem varchar(25),
imagem longblob,
primary key(id),
constraint fkpost 
	foreign key(post_id) 
	references post(id)
) engine = InnoDB;

create table if not exists post (
id bigint auto_increment not null,
titulo varchar(255), 
texto text,
nome_imagem varchar(25),
tamanho_imagem varchar(25),
tipo_imagem varchar(25),
imagem longblob,
primary key(id)
) engine = InnoDB;

describe comentarios;