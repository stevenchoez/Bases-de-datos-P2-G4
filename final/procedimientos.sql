/*Procedicimientos*/
DROP PROCEDURE IF EXISTS verestudiante;
DELIMITER //
CREATE PROCEDURE verestudiante(IN IN_ayu INT)
BEGIN 
SELECT*FROM AYUDANTIAS AY, ESTUDIANTE E WHERE E.id_ayudante=AY.id_ayudante and AY.id_ayudante=IN_ayu;
END //
DELIMITER ;
Call verestudiante(IN_ayu);

DROP PROCEDURE IF EXISTS agregaradmin;
DELIMITER //
CREATE PROCEDURE agregaradmin(
IN IN_ID_ADMIN INT)
BEGIN 
INSERT INTO ADMINISTRADOR(ID_ADMIN) 
VALUES(IN_ID_ADMIN);
END //
DELIMITER ;
CALL agregaradmin(09884819);
CALL agregaradmin(09884820);
CALL agregaradmin(09884846);

DROP PROCEDURE IF EXISTS deledauno;
DELIMITER //
CREATE PROCEDURE deledauno(IN ID_ADMI int)
BEGIN
DELETE FROM ADMINISTRADOR WHERE ID_ADMIN=ID_ADMI;
END //
DELIMITER;
CALL deledauno(09884817);

DROP PROCEDURE IF EXISTS agregarA;
DELIMITER //
CREATE PROCEDURE agregarA(
IN IN_id_tutoria int,
IN IN_id_ayudante int,
IN IN_tema varchar(45) ,
IN IN_estado tinyint(1) ,
IN IN_rating int ,
IN IN_id_horario int ,
IN IN_id_estudiante int ,
IN IN_zoom int ,
IN IN_link_grabacion varchar(100))
BEGIN 
INSERT INTO AYUDANTIAS(id_tutoria,id_ayudante,tema,estado,rating,id_horario,id_estudiante,zoom,link_grabacion) 
VALUES(IN_id_tutoria,IN_id_ayudante,IN_tema, IN_estado, IN_rating, IN_id_horario,IN_id_estudiante,IN_zoom,
IN_link_grabacion);
END //
DELIMITER ;

CALL agregarA (62,11,"FORMULACION",1,40,1,1,865894556,
"https://www.youtube.com/watch?v=djrluEOy8cY");
CALL agregarA (65,23,"GRAVEDAD",1,50,2,6,865894556,
"https://www.youtube.com/watch?v=djrluEOy8cZ");
CALL agregarA (92,24,"TIKTOKERS",1,47,4,5,865894556,
"https://www.youtube.com/watch?v=djrluEOy8cP");

DROP PROCEDURE IF EXISTS updados;
DELIMITER //
CREATE PROCEDURE updados(IN Tema varchar(45))
BEGIN
UPDATE AYUDANTIAS SET tema= Tema WHERE tema="GRAVEDAD";
END //
DELIMITER;
CALL updados("FISICA CUANTICA");

DROP PROCEDURE IF EXISTS agregarcurso;
DELIMITER //
CREATE PROCEDURE agregarcurso(
IN IN_id_curso INT,
IN IN_materia VARCHAR(15),
IN IN_num_estudiante INT,
IN IN_archivos DATE)
BEGIN 
INSERT INTO CURSO(id_curso, materia, num_estudiante, archivos) 
VALUES(IN_id_curso,IN_materia,IN_num_estudiante,IN_archivos);
END //
DELIMITER ;
CALL agregarcurso(1,"MATEMATICAS DRISCRETAS",58,16-12-2028);
CALL agregarcurso(2,"FISICA 1",58,28-12-2021);
CALL agregarcurso(3,"MATEMATICA 2",58,07-12-2021);

/*UPDATE----------------------*/
DROP PROCEDURE IF EXISTS updados;
DELIMITER //
CREATE PROCEDURE updados(IN ID int)
BEGIN
UPDATE CURSO SET tema=Tema WHERE nummero ;
END //
DELIMITER ;
CALL updados("FISICA CUANTICA");

DROP PROCEDURE IF EXISTS agregarU;
DELIMITER //
CREATE PROCEDURE agregarU(
IN IN_id_usuario int ,
IN IN_tipo varchar(15) ,
IN IN_nombre varchar(45) ,
IN IN_fecha_nacimiento date ,
IN IN_telefono int ,
IN IN_email varchar(45) ,
IN IN_contraseña varchar(45) ,
IN_id_admin int 
)
BEGIN 
INSERT INTO USUARIO( id_usuario,tipo,nombre, fecha_nacimiento, telefono,email,contraseña,id_admin) 
VALUES(IN_id_usuario,IN_tipo,nombre,IN_fecha_nacimiento, IN_telefono,IN_email,IN_contraseña,IN_id_admin );
END //
DELIMITER ;
CALL agregarU(92,"Estudiante","Issac Maza",13-01-2001,0998753514,"issamaza@espol.edu.ec","Papipollo10",09884815)

