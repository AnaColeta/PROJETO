DELIMITER $$

CREATE PROCEDURE addAdmin(
in p_setor varchar(255),
in p_usuario int
)
BEGIN
	if exists(select 1 from usuarios WHERE id=p_usuario)then
		if not exists(select 1 from administradores where usuario=p_usuario)then
			insert into administradores(usuario,setor)
			values(p_usuario,p_setor);
			select "Admin adicionado";
		else
			select 'Ja tem admin';
		end if;
	else
		select 'Nao existe esse usuario';
	end if;
    
END$$

DELIMITER ;
