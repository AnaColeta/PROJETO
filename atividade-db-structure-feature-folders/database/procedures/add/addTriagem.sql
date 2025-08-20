DELIMITER $$

CREATE PROCEDURE addTriagem( 
in p_checkout varchar(255),
in p_historico varchar(255),
in p_sintomas varchar(255),
in p_testeSangue varchar(255)
)
BEGIN
	insert into triagens(checkout,historico,sintomas,testeSangue)
    values(p_checkout,p_historico,p_sintomas,p_testeSangue);
    select 'Triagem feita';

END$$

DELIMITER ;