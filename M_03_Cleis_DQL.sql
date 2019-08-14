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

/*Para exportar arquivo como csv VER PORQUE NÃO FUNFA - Dados salvos em csv de forma manual*/
sqlcmd DESKTOPCSP6HNI\SQLEXPRESS . M_OpFlix E M_03_Cleis_DQL "set nocount on; select * from Perfis" o "C:\Users\34132336883\Desktop\SENAI\GitHub\2s2019-sprint-1-bd-\Perfis" -W -s"," -h-1
 

/*Para verificar número de usuários*/
select count(*) from Usuarios;


/*Para verificar número  de filmes de lançamento cadastrados por categoria*/
Create Function LancamentosPorCategoria (@cat int)
Returns Table 
as
Return(select * from Lancamentos where IdCategoria = @cat  );


Select * from LancamentosPorCategoria(9);

/**/
Create function DiasParaLancamento(@dtAgora Date, @dtLancamento Date)
@dtAgora = getdate
Returns varchar(20)
as
begin
	declare @temp Date;
	if (@dtAgora < dtLancamento)
	begin
		set @temp = @dtAgora;
		set @dtAgora = @dtLancamento;
		set @dtLancamento = @temp;
	end
	return Case When @temp is null then '' else '-' end
	+case when
/*Parei aqui - abaixo código que peguei na net a ser tirado*/
end


    END
    RETURN  CASE WHEN @temp IS NULL THEN '' ELSE '-' END
            + CASE WHEN DATEDIFF(DAY, @antes, @depois) <> 0 THEN CONVERT(VARCHAR, DATEDIFF(DAY, @antes, @depois)) + 'd ' ELSE '' END
            + RIGHT('00' + CONVERT(VARCHAR, DATEDIFF(HOUR, @antes, @depois) % 24), 2) + ':'
            + RIGHT('00' + CONVERT(VARCHAR, DATEDIFF(MINUTE, @antes, @depois) % 60), 2) + ':'
            + RIGHT('00' + CONVERT(VARCHAR, DATEDIFF(SECOND, @antes, @depois) % 60), 2);
END
GO




B – Invocando uma Multi-statement table-valued function:

 
SELECT *
FROM   DtsMinutos(12,'2011-01-01 12:00','2011-01-01 17:00')