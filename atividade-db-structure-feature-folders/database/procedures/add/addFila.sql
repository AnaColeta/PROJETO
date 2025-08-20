DELIMITER $$

CREATE PROCEDURE addFila(
in p_usuario int
)
BEGIN
	if exists(SELECT 1 FROM usuarios WHERE id=p_usuario)THEN
		if not exists(SELECT 1 FROM filaCadastro WHERE usuario=p_usuario)THEN
			INSERT INTO filaCadastro(usuario) values(p_usuario);
            SELECT "Usuario na fila agora";
		else
			SELECT "Usuario ja esta na fila";
		end if;
	else
		SELECT "Nao existe esse usuario";
	end if;
END$$

DELIMITER ;
