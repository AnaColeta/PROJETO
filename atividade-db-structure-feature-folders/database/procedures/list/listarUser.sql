DELIMITER $$

CREATE PROCEDURE listarUser(
in p_user int
)
BEGIN
	if exists(select 1 from usuarios where id= p_user)then
		select * from usuarios where id= p_user;
	else
		select 'Sem usuario';
	end if; 
END$$

DELIMITER ;