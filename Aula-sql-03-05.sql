--use Fred
--CREATE PROCEDURE SP_Escrever
--AS
--PRINT 'Olá Pernambuco'

--EXECUTE SP_Escrever


--ALTER PROCEDURE SP_Escrever
--@Texto VARCHAR(35)
--AS
--PRINT @Texto

--EXECUTE SP_Escrever

--CREATE PROCEDURE SP_Calcular
--@Valor1 INTEGER, @Valor2 INTEGER
--AS
--PRINT 'Resultado = ' + STR(@Valor1 + @Valor2)

--EXECUTE SP_Calcular 10, 5

--ALTER PROCEDURE SP_Calcular
--@Valor1 INTEGER, @Valor2 INTEGER
--AS
--PRINT 'Resultado = ' + LTRIM(STR(@Valor1 + @Valor2))

--EXECUTE SP_Calcular 10, 5

--ALTER PROCEDURE SP_Calcular
--@Valor1 INTEGER, @Valor2 INTEGER
--AS
--PRINT 'Resultado = ' + CAST(@Valor1 + @Valor2 AS VARCHAR)

--EXECUTE SP_Calcular 10, 5

--CREATE PROCEDURE SP_ConsultarFuncao
--@funcao VARCHAR(35) = NULL
--AS
--IF @funcao IS NULL
--SELECT * FROM cadFun;
--ELSE
--SELECT * FROM cadFun WHERE funcao = @funcao

--EXECUTE SP_ConsultarFuncao

--DROP PROCEDURE SP_ConsultarFuncao


--ALTER PROCEDURE SP_ConsultarFuncao
--AS
--DECLARE @funcao VARCHAR(35)
--SET @funcao = 'Vendedor'
--SELECT * FROM CadFun WHERE funcao = @funcao

--EXECUTE SP_ConsultarFuncao


--CREATE PROCEDURE sp_InserirDados
--@codfun INTEGER,
--@nome VARCHAR(40),
--@depto VARCHAR(2),
--@funcao VARCHAR(20),
--@salario DECIMAL(10,2)
--AS
--INSERT INTO cadfun VALUES (@codfun,
--@nome,
--@depto,
--@funcao,
--@salario)

--EXEC sp_InserirDados 99995, 'teste 3', '99', 'SP',999.99--OR --EXEC sp_InserirDados
--@codfun = 99999,
--@nome = 'Teste 3'
--,
--@depto = '99’,
--@funcao = 'SP’,
--@salario = 999.99


--CREATE PROCEDURE SP_IF
--@nome VARCHAR(35), @sexo CHAR(1)
--AS
--DECLARE @tratamento CHAR(5)
--IF @sexo = 'M'
--SET @tratamento = 'Sr. '
--ELSE
--SET @tratamento = 'Sra. '
--PRINT 'Prazer ' + @tratamento + @nome


--WHILE (condição)
--BEGIN
--[instruções]
--[instruções]
--[BREAK]
--END


--CREATE PROCEDURE SP_Contar
--@Limite INT
--AS
--DECLARE @x INT
--SET @x=1
--WHILE (@x <= @Limite)
--BEGIN
--PRINT @x
--SET @x += 1
--END--Tentativa Exercicio------------------------CREATE TABLE  TESTE ( Nome VARCHAR(30))------------------------CREATE PROCEDURE Teste_Inserir------------------------@Nome VARCHAR(30)------------------------AS------------------------INSERT INTO TESTE VALUES (@Nome)------------------------EXECUTE Teste_Inserir------------------------EXEC Teste_Inserir 'Carlos Eduardo'------------------------ALTER PROCEDURE Teste_Inserir
------------------------AS
------------------------DECLARE @Nome VARCHAR(30)
------------------------SET @Nome = 'Carlos Eduardo'
------------------------SELECT * FROM TESTE WHERE Nome = @Nome

------------------------EXECUTE Teste_Inserir
--Tentativa Exercicio

--Tentativa Exercicio
------------------------CREATE PROCEDURE SP_Inserir
------------------------@Limite INT
------------------------AS
------------------------DECLARE @Qtd INT = (SELECT * FROM cadfun)
------------------------DECLARE @nome VARCHAR(30)
------------------------WHILE (@Qtd <=+ @Limite)
------------------------BEGIN
------------------------INSERT INTO TESTE
------------------------VALUES ('Teste 3' + CAST(@nome AS VARCHAR))
------------------------SET @Qtd += 1
------------------------END

--------------------------EXECUTE SP_Inserir

--------------------------Select Nome, Count(*) AS 'Qtd'
--------------------------From cadfun
--------------------------Group by NOME

------------------------SELECT * FROM cadfun

--DECLARE @nome VARCHAR(30)
--Tentativa Exercicio