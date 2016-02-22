  --CREATE --DATABASE --sistemaBPP;

  CREATE TABLE persona(
    dni CHAR(8) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    fechanac DATE NOT NULL,
    estado BOOLEAN DEFAULT 0 NOT NULL,
    PRIMARY KEY(dni)
   )ENGINE=INNODB;

  CREATE TABLE rol(
    idrol INT AUTO_INCREMENT NOT NULL,
    nombrerol VARCHAR(20) NOT NULL,
    PRIMARY KEY(idrol)
  )ENGINE=INNODB;

  CREATE TABLE cliente(
    idcliente INT AUTO_INCREMENT NOT NULL,
    dni CHAR(8),
    UNIQUE i_dni(dni),
    activo BOOLEAN DEFAULT 0 NOT NULL,
    PRIMARY KEY(idcliente)
   )ENGINE=INNODB;
  ALTER TABLE cliente ADD FOREIGN KEY (dni) REFERENCES persona(dni) ON DELETE CASCADE;

  CREATE TABLE empleado(
    idempleado INT AUTO_INCREMENT NOT NULL,
    dni CHAR(8),
    UNIQUE i_dni(dni),
    activo BOOLEAN DEFAULT 0 NOT NULL,
    username VARCHAR(20) NOT NULL,
    UNIQUE i_username(username),
    password VARCHAR(20) NOT NULL,
    idrol INT,
    PRIMARY KEY(idempleado)
   )ENGINE=INNODB;
  ALTER TABLE empleado ADD FOREIGN KEY (idrol) REFERENCES rol(idrol) ON DELETE CASCADE;
  ALTER TABLE empleado ADD FOREIGN KEY (dni) REFERENCES persona(dni) ON DELETE CASCADE;

  CREATE TABLE contrato_estado(
    idcontest INT AUTO_INCREMENT NOT NULL,
    detalle CHAR(20) NOT NULL,
    PRIMARY KEY(idcontest)  
   )ENGINE=INNODB;

  CREATE TABLE contrato(
    idcontrato INT AUTO_INCREMENT NOT NULL,
    fechaini DATETIME NOT NULL,
    fechafin DATETIME, 
    idcontest INT NOT NULL,
    PRIMARY KEY(idcontrato)  
   )ENGINE=INNODB;
  ALTER TABLE contrato ADD FOREIGN KEY (idcontest) REFERENCES contrato_estado(idcontest) ON DELETE CASCADE;

  CREATE TABLE servicio(
    idservicio INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(50),
    monto DECIMAL(6,2) NOT NULL,
    activo BOOLEAN DEFAULT 0 NOT NULL,
    PRIMARY KEY(idservicio)
   )ENGINE=INNODB;

  CREATE TABLE parentesco(
    idparent INT AUTO_INCREMENT NOT NULL,
    detalle VARCHAR(20) NOT NULL,
    PRIMARY KEY(idparent)
   )ENGINE=INNODB;

  CREATE TABLE contrato_cliente(
    idcontrato INT,
    idcliente INT,
    idparent INT,
    activo BOOLEAN DEFAULT 0,
    PRIMARY KEY(idcontrato,idcliente)
   )ENGINE=INNODB;
  ALTER TABLE contrato_cliente ADD FOREIGN KEY (idcontrato) REFERENCES contrato(idcontrato) ON DELETE CASCADE;
  ALTER TABLE contrato_cliente ADD FOREIGN KEY (idcliente) REFERENCES cliente(idcliente) ON DELETE CASCADE;
  ALTER TABLE contrato_cliente ADD FOREIGN KEY (idparent) REFERENCES parentesco(idparent) ON DELETE CASCADE;

  CREATE TABLE atencion_cliente_servicio(
    idcliente INT ,
    idservicio INT ,
    fechauso DATETIME,
    observacion VARCHAR(100),
    PRIMARY KEY(idcliente,idservicio)
   )ENGINE=INNODB;
  ALTER TABLE atencion_cliente_servicio ADD FOREIGN KEY (idcliente) REFERENCES cliente(idcliente) ON DELETE CASCADE;
  ALTER TABLE atencion_cliente_servicio ADD FOREIGN KEY (idservicio) REFERENCES servicio(idservicio) ON DELETE CASCADE;

  CREATE TABLE cuota(
    idcuota INT AUTO_INCREMENT NOT NULL,
    idcontrato INT,
    fechaesperada DATETIME NOT NULL,  
    estado INT NOT NULL,
    PRIMARY KEY(idcuota)
   )ENGINE=INNODB;
  ALTER TABLE cuota ADD FOREIGN KEY (idcontrato) REFERENCES contrato(idcontrato) ON DELETE CASCADE;

  CREATE TABLE cuenta(
    idcuenta INT AUTO_INCREMENT NOT NULL,
    idcontrato INT ,
    UNIQUE i_idcontrato(idcontrato),
    saldo DECIMAL(7,2) DEFAULT 0.00 NOT NULL,
    estado BOOLEAN DEFAULT 0 NOT NULL,
    PRIMARY KEY(idcuenta)  
   )ENGINE=INNODB;
  ALTER TABLE cuenta ADD FOREIGN KEY (idcontrato) REFERENCES contrato(idcontrato) ON DELETE CASCADE;

  CREATE TABLE pago(
    idpago INT AUTO_INCREMENT NOT NULL,
    idcuota INT,
    UNIQUE i_idcuota(idcuota),
    fechapago DATETIME,
    idcliente INT,
    idempleado INT,
    PRIMARY KEY(idpago) 
   )ENGINE=INNODB;
  ALTER TABLE pago ADD FOREIGN KEY (idcliente) REFERENCES cliente(idcliente) ON DELETE CASCADE;
  ALTER TABLE pago ADD FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON DELETE CASCADE;
  ALTER TABLE pago ADD FOREIGN KEY (idcuota) REFERENCES cuota(idcuota) ON DELETE CASCADE;

  CREATE TABLE contrato_servicio(
    idcontrato INT,
    idservicio INT,  
    PRIMARY KEY(idcontrato,idservicio)
   )ENGINE=INNODB;
  ALTER TABLE contrato_servicio ADD FOREIGN KEY (idcontrato) REFERENCES contrato(idcontrato) ON DELETE CASCADE;
  ALTER TABLE contrato_servicio ADD FOREIGN KEY (idservicio) REFERENCES servicio(idservicio) ON DELETE CASCADE;


  CREATE TABLE log_sesion(
    idlogsesion INT AUTO_INCREMENT NOT NULL,
    idempleado INT,
    fechaacceso DATETIME NOT NULL,
    PRIMARY KEY (idlogsesion)
  )ENGINE=INNODB;
  ALTER TABLE log_sesion ADD FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON DELETE CASCADE;

  CREATE TABLE log_empleado_inserts(
    idlogeminserts INT AUTO_INCREMENT NOT NULL,
    idempleado INT,
    tabla VARCHAR(20) NOT NULL,
    identificador VARCHAR(20) NOT NULL,
    registro VARCHAR(500) NOT NULL,
    fecha DATETIME NOT NULL,
    PRIMARY KEY (idlogeminserts)    
  )ENGINE=INNODB;
  ALTER TABLE log_empleado_inserts ADD FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON DELETE CASCADE;

  CREATE TABLE log_empleado_updates(
    idlogemupdates INT AUTO_INCREMENT NOT NULL,
    idempleado INT,
    tabla VARCHAR(20) NOT NULL,
    identificador VARCHAR(20) NOT NULL,
    registroantiguo VARCHAR(500) NOT NULL,
    registronuevo VARCHAR(500) NOT NULL,
    fecha DATETIME NOT NULL,
    PRIMARY KEY (idlogemupdates)
  )ENGINE=INNODB;
  ALTER TABLE log_empleado_updates ADD FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON DELETE CASCADE;

  CREATE TABLE log_empleado_deletes(
    idlogemdeletes INT AUTO_INCREMENT NOT NULL,
    idempleado INT,
    tabla VARCHAR(20) NOT NULL,
    identificador VARCHAR(20) NOT NULL,
    fecha DATETIME NOT NULL,
    PRIMARY KEY (idlogemdeletes)
  )ENGINE=INNODB;
  ALTER TABLE log_empleado_deletes ADD FOREIGN KEY (idempleado) REFERENCES empleado(idempleado) ON DELETE CASCADE;