/*Para utilizar o banco de Dados - Rode essa opção antes de tudo*/
Use M_OpFlix

/*Para visualizar tabelas*/
select * from Perfis
select * from Usuarios
select * from Categorias
select * from Tipos
select * from Classificacoes
select * from Veiculos
select * from Lancamentos

/*Para visualizar tabelas "completas"*/
select Perfis.*, Usuarios.*
from Perfis
inner join Usuarios
on Perfis.IdPerfil = Usuarios.IdPerfil;

select Lancamentos.*, Categorias.*,Tipos.*, Veiculos.*, Classificacoes.*
from Categorias
inner join Lancamentos
on Categorias.IdCategoria = Lancamentos.IdCategoria
inner join Tipos
on Tipos.IdTipo = Lancamentos.IdTipo
inner join Veiculos
on Veiculos.IdVeiculo = Lancamentos.IdVeiculo
inner join Classificacoes
on Classificacoes.IdClassificacao = Lancamentos.IdClassificacao

select Favoritos.*, Usuarios.*, Lancamentos.*
from Usuarios
inner join Favoritos
on Usuarios.IdUsuario = Favoritos.IdUsuario
inner join Lancamentos
on Lancamentos.IdLancamento = Favoritos.IdLancamento


/*Para verificar número de usuários*/
select count(*) from Usuarios;

/*Para verificar número  de filmes de lançamento cadastrados por categoria*/


Create Function LancamentosPorCategoria (@cat int)
Returns Table 
as
Return(select * from Lancamentos where IdCategoria = @cat  );


Select * from LancamentosPorCategoria(9);