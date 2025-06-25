 CREATE SCHEMA `tienda_zapatillas2`;
 USE `tienda_zapatillas2`;
 
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
    
USE `tienda_zapatillas2`;
	ALTER TABLE zapatillas
    ADD COLUMN marca VARCHAR(45) NOT NULL;
    
USE `tienda_zapatillas2`;
	ALTER TABLE zapatillas
	ADD COLUMN talla INT NOT NULL;
    
USE `tienda_zapatillas2`;
	ALTER TABLE empleados
    MODIFY COLUMN salario FLOAT NOT NULL;

USE `tienda_zapatillas2`;
	ALTER TABLE clientes
    DROP COLUMN pais;
    
USE `tienda_zapatillas2`;
	ALTER TABLE facturas
    ADD COLUMN total FLOAT NOT NULL;
    
ALTER TABLE empleados
	MODIFY COLUMN salario DECIMAL(12,2);
    
USE `tienda_zapatillas2`;
	INSERT INTO zapatillas (id_zapatilla, modelo, color, marca, talla)
    VALUES 
    (1, "XQYUN", "Negro", "Nike", 42),
    (2, "UOPMN", "Rosas", "Nike", 39),
    (3, "OPNYT", "Verdes", "Adidas", 35);
    
select * from zapatillas;


INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES 
(1, "Laura", "Alcobendas", 25987.00, '2010-09-03'),
(2, "María", "Sevilla", NULL , '2001-04-11'),
(3, "Esther", "Oviedo", 30165.98, '2000-11-29');

select * from empleados;

