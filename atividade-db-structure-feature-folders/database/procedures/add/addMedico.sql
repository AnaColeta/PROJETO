DELIMITER $$

CREATE PROCEDURE addMedico( 
in p_numConselho varchar(255),
in p_modeloConsulta varchar(255),
in p_horarioAtend varchar(255),
in p_usuario int
)
BEGIN
	if exists(select 1 from usuarios where id =p_usuario)then
		if not exists(select 1 from medicos where id=p_usuario)then
			insert into medicos(numConselho,modeloConsulta,horarioAtendimento,usuario)
            values(p_numConselho,p_modeloConsulta,p_horarioAtend,p_usuario);
			select 'Medico adicionado';
		else
			select 'Ja existe medico';
		end if;
	else
		select 'Nao existe esse usuario';
	end if;
END$$

DELIMITER ;