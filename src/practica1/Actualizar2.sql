DELIMITER $$
DROP PROCEDURE IF EXISTS actualizar_dispositivos;
CREATE PROCEDURE actualizar_dispositivos(
    IN  _p_nombre VARCHAR (30),
    IN  _p_precio NUMERIC(6.2),
    IN  _p_tipo VARCHAR(30),
   
    OUT _p_confirm INT
)
BEGIN
    --
    UPDATE producto
       SET tipo = _p_tipo,
           precio = _p_precio
    WHERE nombre = _p_nombre;
    --
    IF ROW_COUNT() > 0 THEN
        SET _p_confirm = 1;
    ELSE
        SET _p_confirm = 0;
    END IF;
END$$
DELIMITER ;