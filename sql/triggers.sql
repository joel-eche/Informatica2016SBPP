DROP TRIGGER IF EXISTS trg_persona_baja;
DELIMITER $$
CREATE TRIGGER trg_persona_baja AFTER UPDATE ON persona
  FOR EACH ROW
  BEGIN
    DECLARE iden_cliente INT;
    SELECT c.idcliente INTO iden_cliente FROM cliente c WHERE c.dni=OLD.dni;
    IF OLD.estado != NEW.estado AND OLD.estado=0 THEN      
      UPDATE cliente SET cliente.activo=1 WHERE cliente.dni=OLD.dni;
      UPDATE empleado SET empleado.activo=1 WHERE empleado.dni=OLD.dni;
      UPDATE contrato_cliente SET contrato_cliente.activo=1 WHERE contrato_cliente.idcliente=iden_cliente;
    END IF;
  END;$$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_cliente_baja;
DELIMITER $$
CREATE TRIGGER trg_cliente_baja AFTER UPDATE ON cliente
  FOR EACH ROW
  BEGIN
    IF OLD.activo != NEW.activo AND OLD.activo=0 THEN      
      UPDATE contrato_cliente SET contrato_cliente.activo=1 WHERE contrato_cliente.idcliente=OLD.idcliente;
    END IF;
  END;$$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_contrato_baja;
DELIMITER $$
CREATE TRIGGER trg_contrato_baja AFTER UPDATE ON contrato
  FOR EACH ROW
  BEGIN
    IF OLD.idcontest != NEW.idcontest THEN      
      IF NEW.idcontest=3 OR NEW.idcontest=4 THEN
        UPDATE contrato_cliente SET contrato_cliente.activo=1 WHERE contrato_cliente.idcontrato=OLD.idcontrato;
        UPDATE cuenta SET cuenta.estado=1 WHERE cuenta.idcontrato=OLD.idcontrato;
      END IF;
    END IF;
  END;$$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_pago_nuevo;
DELIMITER $$
CREATE TRIGGER trg_pago_nuevo AFTER INSERT ON pago
  FOR EACH ROW
  BEGIN   
    UPDATE cuota SET cuota.estado=2 WHERE cuota.idcuota=NEW.idcuota ;
  END;$$
DELIMITER ;



