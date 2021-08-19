/*ADMINISTRADOR---------*/
/*INSERT*/
DROP PROCEDURE IF EXISTS agregaradmin;
DELIMITER //
CREATE PROCEDURE agregaradmin(
IN IN_ID_ADMIN INT)
BEGIN 
INSERT INTO ADMINISTRADOR(ID_ADMIN) 
VALUES(IN_ID_ADMIN);
END //
DELIMITER ;
CALL agregaradmin(09884815);
CALL agregaradmin(09884816);
CALL agregaradmin(09884817);

/*UPDATE*/
/*DELETE*/


/*AYUDANTIAS------------*/
ALTER TABLE AYUDANTIAS DROP evidencia;
ALTER TABLE AYUDANTIAS MODIFY zoom INT(6);
/*AGREGAR*/
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
IN IN_zoom INT(6) ,
IN IN_link_grabacion varchar(100))
BEGIN 
INSERT INTO AYUDANTIAS(id_tutoria,id_ayudante,tema,estado,rating,id_horario,id_estudiante,zoom,link_grabacion) 
VALUES(IN_id_tutoria,IN_id_ayudante,IN_tema, IN_estado, IN_rating, IN_id_horario,IN_id_estudiante,IN_zoom,
IN_link_grabacion);
END //
DELIMITER ;

CALL agregarA (1,11,"FORMULACION",1,40,1,1,8658945568,
"https://www.youtube.com/watch?v=djrluEOy8cY");
CALL agregarA (2,23,"GRAVEDAD",1,50,2,6,8658945569,
"https://www.youtube.com/watch?v=djrluEOy8cZ");
/*UPDATE*/
/*DELETE*/



/*CURS0---------------------*/
ALTER TABLE CURSO RENAME COLUMN anuncio to materia;
ALTER TABLE CURSO MODIFY num_estudiante INT;
/*INSERT*/
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
CALL agregarcurso(1,"QUIMICA",58,15-12-2021);
CALL agregarcurso(2,"FISICA",58,15-12-2021);
CALL agregarcurso(3,"MATEMATICA",58,15-12-2021);
/*UPDATE*/
/*DELETE*/


/*ESTUDIANTE----------*/
DROP PROCEDURE IF EXISTS agregarE;
DELIMITER //
CREATE PROCEDURE agregarE(
IN IN_id_estudiante int  ,
IN IN_matricula varchar(15) ,
IN IN_ayudante tinyint(1) ,
IN IN_estado date ,
IN IN_id_curso int
)
BEGIN 
INSERT INTO ESTUDIANTE(id_estudiante, matricula,ayudante, estado,id_curso) 
VALUES(IN_id_estudiante,IN_matricula,IN_ayudante,IN_estado,IN_id_curso);
END //
DELIMITER ;

CALL agregarE(1,"204512200",1,15-11-21,1);
CALL agregarE(2,"204512201",1 ,15-11-21,2);
CALL agregarE(3,"204512202",1,15-11-21,3);
CALL agregarE(4,"204512203",0,15-11-21,3);
CALL agregarE(5,"204512204",0,15-11-21,3);
CALL agregarE(6,"204512205",0,15-11-21,2);
CALL agregarE(7,"204512205",0,15-11-21,1);
/*UPDATE*/
/*DELETE*/



/*HORARIO--------*/
DROP PROCEDURE IF EXISTS agregarH;
DELIMITER //
CREATE PROCEDURE agregarH(
IN IN_id_horario int,
IN IN_fecha date ,
IN IN_h_inicio time ,
IN IN_h_fin time ,
IN IN_N_sem int ,
IN IN_id_ayudante INT)

BEGIN 
INSERT INTO HORARIO(id_horario,fecha,h_inicio, h_fin,N_sem,id_ayudante) 
VALUES(IN_id_horario,IN_fecha,IN_h_inicio,IN_h_fin,IN_N_sem,IN_id_ayudante );
END //
DELIMITER ;
CALL agregarH (1,15-12-2021,5,7,5,1);
CALL agregarH (2,15-12-2021,5,7,5,1);
CALL agregarH (3,15-12-2021,3,5,5,1);
/*UPDATE*/
/*DELETE*/


/*PROFESOR------------*/

DROP PROCEDURE IF EXISTS agregarP;
DELIMITER //
CREATE PROCEDURE agregarP(
IN IN_id_profesor int ,
IN IN_cedula char(10)
)

BEGIN 
INSERT INTO PROFESOR(id_profesor ,cedula ) 
VALUES(IN_id_profesor ,IN_cedula);
END //
DELIMITER ;
CALL agregarP(1,0931999064);
CALL agregarP(2,0931999065);
CALL agregarP(3,0931999066);

/*TAREA---------*/
DROP PROCEDURE IF EXISTS agregarT;
DELIMITER //
CREATE PROCEDURE agregarT(
IN IN_id_tarea int ,
IN IN_materia varchar(20) ,
IN IN_puntuacion int ,
IN IN_fecha_publicacion date ,
IN IN_fecha_plazo date ,
IN IN_fecha_entrega date ,
IN IN_id_curso int ,
IN IN_id_profesor int
)

BEGIN 
INSERT INTO TAREA(id_tarea , materia ,puntuacion ,fecha_publicacion, fecha_plazo, fecha_entrega ,
id_curso ,id_profesor  ) VALUES(IN_id_tarea , IN_materia ,IN_puntuacion ,IN_fecha_publicacion, IN_fecha_plazo, 
IN_fecha_entrega ,IN_id_curso ,IN_id_profesor );
END //
DELIMITER ;
CALL agregarT(1,"QUIMICA",100,12-12-2021,15-12-2021,14-12-2021,1,1);
CALL agregarT(2,"FISICA",50,11-12-2021,16-12-2021,15-12-2021,2,2);
CALL agregarT(3,"MATEMATICA",30,13-12-2021,18-12-2021,16-12-2021,3,3);
/*USUARIO*/
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
CALL agregarU(12,"Estudiante","Issac Maza",13-01-2001,0998753514,"issamaza@espol.edu.ec","Papipollo10",09884815)