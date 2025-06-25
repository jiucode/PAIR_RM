 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
 CREATE TABLE empleados(
 id_empleado INT NOT NULL auto_increment PRIMARY KEY,
 nombre VARCHAR(45) NOT NULL,
 tienda VARCHAR(45) NOT NULL,
 salario INT,
 fecha_incorporacion DATE NOT NULL
 );
 CREATE TABLE zapatillas(
 id_zapatilla INT NOT NULL auto_increment PRIMARY KEY,
 modelo VARCHAR(45) NOT NULL,
 color VARCHAR(45) NOT NULL
 );
 CREATE TABLE clientes(
 id_cliente INT NOT NULL auto_increment primary key,
 nombre VARCHAR(45) NOT NULL,
 telefono INT NOT NULL,
 email VARCHAR(45) NOT NULL,
 direccion VARCHAR(45) NOT NULL,
 ciudad VARCHAR(45),
 provincia VARCHAR(45) NOT NULL,
 pais VARCHAR(45) NOT NULL,
 codigo_postal VARCHAR(45) NOT NULL
 );
 CREATE TABLE facturas(
 id_factura INT NOT NULL auto_increment PRIMARY KEY,
 numero_factura VARCHAR(45) NOT NULL,
 fecha DATE NOT NULL,
 id_zapatilla INT,
 id_empleado INT,
 id_cliente INT,
 CONSTRAINT fk_idzapatillas
	FOREIGN KEY (id_zapatilla) REFERENCES zapatillas (id_zapatilla),
 CONSTRAINT fk_idempleado
	FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado),
 CONSTRAINT fk_idcliente
	FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
    );