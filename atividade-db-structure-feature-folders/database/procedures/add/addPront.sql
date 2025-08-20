DELIMITER $$

CREATE PROCEDURE addPront( 
in p_banco varchar(255),
in p_clinica int,
in p_acesso int,
in p_usuario int
)
BEGIN
	if exists(select 1 from clinicas where id=p_clinica) and exists
		(select 1 from acessos where id= p_acesso)and exists
		(select 1 from usuarios where id = p_usuario) then
		insert into prontuario(banco,clinica,acesso,usuario)
		values(p_banco,p_clinica,p_acesso,p_usuario);
		select 'Prontuario adicionado';
    else
		select 'Algum dado esta errado';
    end if;
END$$

DELIMITER ;