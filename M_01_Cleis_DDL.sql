create database M_OpFlix
Use M_OpFlix

Create table Perfis
(
	IdPerfil Int Identity not null primary key
	,Nome varchar(255) not null
);

Create table Usuarios
(
	IdUsuario int Identity not null primary key
	,Nome varchar(255) not null
	,Email varchar(255)
	,Senha varchar(255)
	,Celular varchar(255)
	,Endereco varchar(255)
	,IdPerfil int foreign key references Perfis
);

Create table Categorias
(
	IdCategoria int Identity not null primary key
	, Nome varchar (255) not null
);

Create table Tipos
(
	IdTipo int Identity not null primary key
	, Nome varchar (255) not null
);

Create table Veiculos
(
	IdVeiculo int Identity not null primary key
	, Nome varchar (255) not null
);

Create table Classificacoes
(
	IdClassificacao int Identity not null primary key
	, Nome varchar (255) not null
);

Create table Lancamentos
(
	IdLancamento int Identity not null primary key
	,Nome Varchar(255) not null
	,Sinopse text
	,Duracao int
	,DataLancamento date not null
	,IdVeiculo int foreign key references Veiculos
	,IdCategoria int foreign key references Categorias
	,IdClassificacao int foreign key references Classificacoes
	,IdTipo int foreign key references Tipos
);

Create table Favoritos
(
	IdUsuario int foreign key references Usuarios
	,IdLancamento int foreign key references Lancamentos
);