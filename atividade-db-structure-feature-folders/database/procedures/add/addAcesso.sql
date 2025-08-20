DELIMITER $$

CREATE PROCEDURE addAcesso( 
in p_fazerLogin varchar(255),
in p_fazerLogout varchar(255),
in p_triagem int
)
BEGIN
	if exists(select 1 from triagens where id=p_triagem)then
		insert into acessos(fazerLogin,fazerLogout,triagem)
        values(p_fazerLogin,p_fazerLogout,p_triagem);
        select 'Acesso feito';
	else
		select 'Sem triagem';
	end if;

END$$

DELIMITER ;