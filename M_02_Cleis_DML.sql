/*Esse arquivo de manupula��o pode ser executado mais de uma vez, conforme necessidade de manipular os dados*/

/*Antes de executar uma a��o, esteja certo de que usa o banco certo atrav�s do comando abaixo */
Use M_OpFlix

/*Inserindo dados na tabela*/
insert into Perfis(Nome)
values ('Administrador'), ('Cliente');

insert into Usuarios (Nome, Email, Senha, Celular, Endereco, IdPerfil)
values	 ('Erik'	, 'erik@email.com'		,'123456'	, '999999999' ,'Rua A 1', 1)
		,('Cassiana', 'cassiana@email.com'	,'123456'	, '899999999' ,'Rua H 2', 1)
		,('Helena'	, 'helena@email.com'	,'123456'	, '799999999' ,'Rua C 3', 2)
		,('Roberto'	, 'rob@email.com'		,'3110'		, '898999999' ,'Rua A 3', 2);

insert into Categorias(Nome)
values	('A��o'),	 ('Anima��o'), ('Aventura'),		  ('Com�dia'),		 ('Drama'),
		('Fam�lia'), ('Fantasia'), ('Fic��o Cient�fica'), ('Filme Musical'), ('Suspense');

insert into Tipos(Nome)
values	('Anime'), ('Desenho'), ('Filme'), ('S�rie'), ('Novela');

insert into Veiculos(Nome)
values ('Amazon'), ('Netflix'), ('Cinema'), ('TV'), ('Prime Video');

insert into Classificacoes(Nome)
values ('Livre'), ('16 anos'), ('18 ou mais');

insert into Lancamentos(Nome, Sinopse, Duracao, DataLancamento, IdVeiculo, IdCategoria, IdClassificacao, IdTipo)
values   ('O Rei Le�o' 
		  ,'O Rei Le�o, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno le�o que idolatra seu pai, o rei Mufasa, � fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irm�o de Mufasa e ex-herdeiro do trono, tem seus pr�prios planos. A batalha pela Pedra do Reino � repleta de trai��o, eventos tr�gicos e drama, o que acaba resultando no ex�lio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba ter� que crescer e voltar para recuperar o que � seu por direito'
		  , 118
		  , '2019-07-18'
		  ,4
		  ,9
		  ,1
		  ,3)

		 ,('La Casa de Papel 3� Temporada'
		  ,'Oito habilidosos ladr�es se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da hist�ria e levar com eles mais de 2 bilh�es de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como ref�m, al�m dos agentes da for�a de elite da pol�cia, que far�o de tudo para que a investida dos criminosos fracasse.'
		  , 650
		  , '2019-07-19'
		  , 2
		  , 10
		  , 2
		  , 4)

		 ,('Deuses Americanos'
		  ,'Shadow Moon � um ex-vigarista que serve como seguran�a e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que �, na verdade, um dos velhos deuses, e est� na Terra em uma miss�o: reunir for�as para lutar contra as novas entidades.'
		  , 620
		  , '2017-04-30'
		  , 5
		  , 5
		  , 3
		  , 4)

		,('Toy Story 4' 
		  ,'Woody sempre teve certeza sobre o seu lugar no mundo e que sua prioridade � cuidar de sua crian�a, seja Andy ou Bonnie. Mas quando Bonnie adiciona um relutante novo brinquedo chamado Garfinho ao seu quarto, uma aventura na estrada ao lado de velhos e novos amigos mostrar� a Woody qu�o grande o mundo pode ser para um brinquedo.'
		  ,100
		  ,'2019-06-20'
		  ,4
		  ,2
		  ,1
		  ,3);

insert into Favoritos (IdUsuario, IdLancamento)
values (1,1), (1,2);

/*Para visualizar as tabelas criadas*/
select * from Perfis
select * from Usuarios
select * from Categorias
select * from Tipos
select * from Classificacoes
select * from Veiculos
select * from Lancamentos

