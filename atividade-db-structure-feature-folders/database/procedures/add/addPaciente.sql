DELIMITER $$

CREATE PROCEDURE addPaciente( 
in p_dataNasc date,
in p_nFilhos int,
in p_estadoCivil enum('solteiro','casado','divorciado','viuvo','uniao estavel'),
in p_usuario int
)
BEGIN
	if exists(select 1 from usuarios where id=p_usuario)then
		if not exists(select 1 from pacientes where usuario=p_usuario)then
			insert into pacientes(dataNasc,nFilhos,estadoCivil,usuario)
			values(p_dataNasc,p_nFilhos,p_estadoCivil,p_usuario);
			select 'Paciente adicionado';
		else
			select 'Ja existe paciente';
		end if;
	else
		select 'Nao existe esse usuario';
	end if;

END$$

DELIMITER ;