Use M_OpFlix

select * from Perfis
select * from Usuarios
select * from Categorias
select * from Tipos
select * from Classificacoes
select * from Veiculos
select * from Lancamentos

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