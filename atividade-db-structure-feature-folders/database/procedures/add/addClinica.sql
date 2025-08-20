DELIMITER $$

CREATE PROCEDURE addClinica( 
in p_nomeFantasia varchar(255),
in p_endereco varchar(255),
in p_telefone varchar(255),
in p_razaoSocial varchar(255),
in p_cnpj varchar(255)
)
BEGIN
	if not exists(select 1 from clinicas where cnpj= p_cnpj)then
		insert into clinicas(nomeFantasia,endereco,telefone,razaoSocial,cnpj)
        values(p_nomeFantasia,p_endereco,p_telefone,p_razaoSocial,p_cnpj);
        select 'Clinica adicionada';
	else
		select 'ja existe';
	end if;

END$$

DELIMITER ;