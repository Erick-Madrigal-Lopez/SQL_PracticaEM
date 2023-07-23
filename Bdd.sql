-- BASE DE DATOS ORACLE 21c XE DISPONIBLE EN https://www.oracle.com/mx/database/technologies/oracle-database-software-downloads.html 
-- En el script del squema de los usuarios administrador creé el usuario con su propio esquema y le asigne permisos de insercion sobre la tabla y creacion de la tabla
CREATE USER PLBD IDENTIFIED BY acceso1;
GRANT CONNECT TO PLBD;
GRANT CREATE TABLE TO plbd;
ALTER USER plbd quota unlimited ON users;

-- Inicié sesión con el usuario creado para crear la siguiente tabla
CREATE TABLE "PLBD"."USUARIO" (
    "LOGIN" VARCHAR2(20) NOT NULL ENABLE,
    "PASSWORD" VARCHAR2(30) NOT NULL ENABLE,
    "NOMBRE" VARCHAR2(50) NOT NULL ENABLE,
    "CLIENTE" FLOAT(126) NOT NULL ENABLE,
    "EMAIL" VARCHAR2(50),
    "FECHAALTA" DATE DEFAULT sysdate NOT NULL ENABLE,
    "FECHABAJA" DATE,
    "STATUS" CHAR(1) DEFAULT 'A' NOT NULL ENABLE,
    "INTENTOS" FLOAT(126) DEFAULT 0 NOT NULL ENABLE,
    "FECHAREVOCADO" DATE,
    "FECHA_VIGENCIA" DATE,
    "NO_ACCESO" NUMBER(*, 0),
    "APELLIDO_PATERNO" VARCHAR2(50),
    "APELLIDO_MATERNO" VARCHAR2(50),
    "AREA" NUMBER(4, 0),
    "FECHAMODIFICACION" DATE DEFAULT sysdate NOT NULL ENABLE,
    PRIMARY KEY ("LOGIN")
)

-- Script para insertar datos a la tabla
INSERT INTO USUARIO (
    LOGIN, 
    PASSWORD, 
    NOMBRE, 
    CLIENTE, 
    EMAIL, 
    FECHAALTA, 
    FECHABAJA, 
    STATUS, 
    INTENTOS, 
    FECHAREVOCADO, 
    FECHA_VIGENCIA, 
    NO_ACCESO, 
    APELLIDO_PATERNO, 
    APELLIDO_MATERNO, 
    AREA, 
    FECHAMODIFICACION
) VALUES (
    'Admin11', 
    'Q29udHJhc2VuaWE=', 
    'Administrador', 
    3.0, 
    'admin@domain.com', 
    sysdate, 
    TO_DATE('20230105', 'yyyymmdd'), 
    'B', 
    0, 
    TO_DATE('20230101', 'yyyymmdd'), 
    TO_DATE('20240101', 'yyyymmdd'), 
    2, 
    'Maridñ', 
    'Rtte', 
    34, 
    sysdate
);
	
-- Script para extraccion de datos
SELECT * FROM USUARIO u ;