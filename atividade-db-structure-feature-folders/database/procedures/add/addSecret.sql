DELIMITER $$

CREATE PROCEDURE addSecret( 
in p_atendimento varchar(255),
in p_usuario int
)
BEGIN
	if exists(select 1 from usuarios where id =p_usuario)then
		if not exists(select 1 from secretarios where id=p_usuario)then
			insert into secretarios(atendimento,usuario)
            values(p_atendimento,p_usuario);
            select 'Secretario adicionado';
		else
			select 'Ja existe secretario';
		end if;
	else
		select 'Nao existe esse usuario';
	end if;
END$$

DELIMITER ;