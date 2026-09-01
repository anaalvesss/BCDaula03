-- CRUD (Criar, Ler, Atualizar e Deletar)
-- DDL (Data Definition Language)
-- CRUD DDL (create, [Show, Describe], Alter, Drop)

-- Para criar do zero podemos excluir o banco se já existe é criar novamente
DROP DATABASE IF EXISTS pedidos; 
-- Criar um banco de dados chamado "pedidos"
CREATE DATABASE pedidos;
-- Selecionar o banco de dados "pedidos" para uso
USE pedidos;
-- Criar tabela de produtos
CREATE TABLE produtos(
    id int primary key not null auto_increment,
    nome varchar(40) not null,
    descrição varchar(200) not null , 
    volume decimal (10,2) not null,
    valor decimal (10,2) not null
);
-- Criar tabela de pedidos
CREATE TABLE pedidos(
    id int primary key not null auto_increment,
    cliente varchar(40) not null,
    cep varchar(10) not null,
    numero varchar(10),
    complemento varchar(20),
    data DATE not null default(CURDATE())
);
CREATE TABLE itens(
    id int primary key not null auto_increment,
    id_pedido int not null,
    id_produto int not null,
    preco decimal(10,2) not null,
    quantidade int not null
);
-- Criando os relacionamentos , alterando a tabela de itens
alter table itens add constraint eh foreign key (id_produto) references produtos(id);
alter table itens add constraint possui foreign key (id_pedido) references pedidos(id);