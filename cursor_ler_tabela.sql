
  
  

DECLARE @variavel INT
DECLARE cursor_objects CURSOR FOR
--QUANTOS MAIS CAMPOS VOCÊ BUSCAR MAIS VARIÁVEIS TERA QUE DECLARAR
SELECT campos FROM tabela --FAZ O SELECT DA TABELA

OPEN cursor_objects

FETCH NEXT FROM cursor_objects INTO @idPermissao --ATRIBUI OS VALORES AS VARIÁVEIS

WHILE @@FETCH_STATUS = 0
BEGIN
	-- INSERIR AQUI O CÓDIGO A SER EXECUTADO
	INSERT INTO tabela values (@variavel)

    FETCH NEXT FROM cursor_objects INTO @idPermissao
END
--FECHA O CURSOR
CLOSE cursor_objects
DEALLOCATE cursor_objects 
