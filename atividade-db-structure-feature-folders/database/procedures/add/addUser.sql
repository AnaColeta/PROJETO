DELIMITER $$

CREATE PROCEDURE addUser(
in p_nome varchar(255),
in p_cpf varchar(14),
in p_sexo enum('m','f'),
in p_endereco varchar(255), 
in p_status varchar(255), 
in p_observacao varchar(255), 
in p_telefone varchar(100)
)
BEGIN
	if not exists(SELECT 1 FROM usuarios WHERE nome = p_nome)THEN
		INSERT INTO usuarios(nome, cpf, sexo, endereco, status, observacao, telefone)
		values(p_nome,p_cpf,p_sexo,p_endereco,p_status,p_observacao,p_telefone);
		SELECT "Usuario cadastrado";
    else
		SELECT "Usuario ja existe";
	end if;
END$$

DELIMITER ;
