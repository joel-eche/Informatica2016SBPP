
  INSERT INTO persona VALUES ('12345678','NOMBREP1','APELLIDOP1','M','DIRECCIONX','1900-12-23',0);
  INSERT INTO persona VALUES ('22345678','NOMBREP2','APELLIDOP2','M','DIRECCIONX','1900-12-23',0);
  INSERT INTO persona VALUES ('32345678','NOMBREP3','APELLIDOP3','F','DIRECCIONX','1900-12-23',0);
  INSERT INTO persona VALUES ('42345678','NOMBREP4','APELLIDOP4','M','DIRECCIONX','1901-12-23',0);
  INSERT INTO persona VALUES ('52345678','NOMBREP5','APELLIDOP5','F','DIRECCIONX','1901-12-23',0);
  INSERT INTO persona VALUES ('62345678','NOMBREP6','APELLIDOP6','M','DIRECCIONX','1902-12-23',0);
  INSERT INTO persona VALUES ('72345678','NOMBREP7','APELLIDOP7','F','DIRECCIONX','1903-12-23',0);
  INSERT INTO persona VALUES ('82345678','NOMBREP8','APELLIDOP8','F','DIRECCIONX','1902-12-23',0);
  INSERT INTO persona VALUES ('92345678','NOMBREP9','APELLIDOP9','M','DIRECCIONX','1902-12-23',0);
  INSERT INTO persona VALUES ('13345678','NOMBREP10','APELLIDOP10','M','DIRECCIONX','1902-12-23',1);

  INSERT INTO rol (nombrerol) VALUES ('ADMIN');
  INSERT INTO rol (nombrerol) VALUES ('NORMAL');
  INSERT INTO rol (nombrerol) VALUES ('INVITADO');

  INSERT INTO cliente (dni,activo) VALUES ('12345678',0);
  INSERT INTO cliente (dni,activo) VALUES ('22345678',0);
  INSERT INTO cliente (dni,activo) VALUES ('32345678',0);
  INSERT INTO cliente (dni,activo) VALUES ('42345678',0);
  INSERT INTO cliente (dni,activo) VALUES ('52345678',0);

  INSERT INTO empleado (dni,activo,username,password,idrol) VALUES ('52345678',0,'admin','1234',1);
  INSERT INTO empleado (dni,activo,username,password,idrol) VALUES ('62345678',0,'juan','1234',1);
  INSERT INTO empleado (dni,activo,username,password,idrol) VALUES ('72345678',0,'pedro','1234',1);
  INSERT INTO empleado (dni,activo,username,password,idrol) VALUES ('82345678',0,'pablo','1234',2);
  INSERT INTO empleado (dni,activo,username,password,idrol) VALUES ('92345678',0,'lucas','1234',2);
  INSERT INTO empleado (dni,activo,username,password,idrol) VALUES ('13345678',0,'jerald','1234',2);

  INSERT INTO contrato_estado (detalle) VALUES ('ACTIVO');
  INSERT INTO contrato_estado (detalle) VALUES ('SERVICIO');
  INSERT INTO contrato_estado (detalle) VALUES ('RESCINDIDO');
  INSERT INTO contrato_estado (detalle) VALUES ('ANULADO');

  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);
  INSERT INTO contrato (fechaini,fechafin,idcontest) VALUES ("2000-12-12",NULL,1);

  INSERT INTO servicio (nombre,descripcion,monto,activo) VALUES ('NICHO','NICHO EN SEXTA FILA',12.5,0);
  INSERT INTO servicio (nombre,descripcion,monto,activo) VALUES ('ATAUD','ATAUD DE PRIMERA CALIDAD',100.0,0);
  INSERT INTO servicio (nombre,descripcion,monto,activo) VALUES ('CAPILLA ARDIENTE','SERVICIO DE CAPILLA ARDIENTE',123.5,0);
  INSERT INTO servicio (nombre,descripcion,monto,activo) VALUES ('CARROZA FUNEBRE','SERVICIO DE CARROZA FUNEBRE',222.5,0);
  INSERT INTO servicio (nombre,descripcion,monto,activo) VALUES ('ARREGLO FLORAL','ARREGLO FLORAL',222.5,0);
  INSERT INTO servicio (nombre,descripcion,monto,activo) VALUES ('INHUMACION','SERVICIO DE INHUMACION',222.5,0);

  INSERT INTO parentesco (detalle) VALUES ('TITULAR');
  INSERT INTO parentesco (detalle) VALUES ('PADRE');
  INSERT INTO parentesco (detalle) VALUES ('MADRE');
  INSERT INTO parentesco (detalle) VALUES ('HIJO');
  INSERT INTO parentesco (detalle) VALUES ('CONYUGE');
  INSERT INTO parentesco (detalle) VALUES ('ABUELO');
  INSERT INTO parentesco (detalle) VALUES ('HERMANO');
  INSERT INTO parentesco (detalle) VALUES ('OTROS');

  INSERT INTO atencion_cliente_servicio (idcliente,idservicio,fechauso,observacion) VALUES  (1,1,NULL,NULL);
  INSERT INTO atencion_cliente_servicio (idcliente,idservicio,fechauso,observacion) VALUES  (1,2,NULL,NULL);
  INSERT INTO atencion_cliente_servicio (idcliente,idservicio,fechauso,observacion) VALUES  (1,3,NULL,NULL);

  INSERT INTO cuota (idcontrato,fechaesperada,estado) VALUES (1,"2005-10-29",0);
  INSERT INTO cuota (idcontrato,fechaesperada,estado) VALUES (1,"2005-11-29",0);
  INSERT INTO cuota (idcontrato,fechaesperada,estado) VALUES (1,"2005-12-29",0);

  insert into cuenta (idcontrato) values (1);
  insert into cuenta (idcontrato) values (2);

  INSERT INTO pago (idcuota,fechapago,idcliente,idempleado) VALUES (1,'2012-12-12',1,2);
  INSERT INTO pago (idcuota,fechapago,idcliente,idempleado) VALUES (2,'2012-12-12',1,2);

  INSERT INTO contrato_servicio (idcontrato,idservicio) VALUES (1,1);
  INSERT INTO contrato_servicio (idcontrato,idservicio) VALUES (1,2);
  INSERT INTO contrato_servicio (idcontrato,idservicio) VALUES (1,3);
  INSERT INTO contrato_servicio (idcontrato,idservicio) VALUES (1,4);

  INSERT INTO log_sesion (idempleado,fechaacceso) VALUES (1,'2016-02-16 10:00:00');

  INSERT INTO contrato_cliente (idcontrato,idcliente,idparent) VALUES (1,1,1);