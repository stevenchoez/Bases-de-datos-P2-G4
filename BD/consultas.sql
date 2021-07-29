-- set up
.headers on
.mode column

-- load database
.read bd.sql

.print "Base de datos cargada"


/*Un archivo llamado consultas.sql en donde estén los queries (select) relacionados a su proyecto. Para las consultas deben de tener:

Para cada tabla, una consulta general, en donde se retornen todos los campos (por ejemplo, una consulta para retornar todos los usuarios),*/
.print "\n"
--DATOS DEL ADMINISTRADOR--
SELECT*FROM ADMINISTRADOR;
--DATOS DEL USUARIO--
SELECT*FROM USUARIO;
--DATOS DEL PROFESOR--
SELECT*FROM PROFESOR;
--DATOS DEL CURSO--
SELECT*FROM CURSO;
--DATOS DEL TAREA--
SELECT*FROM TAREA;
--DATOS DEL ESTUDIANTE--
SELECT*FROM ESTUDIANTE;
--DATOS DEL HORARIO--
SELECT*FROM HORARIO;
--DATOS DEL AYUDANTIAS--
SELECT*FROM AYUDANTIAS;
.print "\n"
/*Para cada tabla, una consulta de ids, en donde se retorne solamente el id de la tabla (por ejemplo, retornar el id de todos los usuarios).*/
.print "\n"
SELECT ID_ADMIN FROM ADMINISTRADOR;
SELECT id_usuario FROM USUARIO;
SELECT id_profesor FROM PROFESOR;
SELECT id_curso FROM CURSO;
SELECT id_tarea FROM TAREA;
SELECT id_estudiante FROM ESTUDIANTE;
SELECT id_horario FROM HORARIO;
SELECT id_tutoria FROM AYUDANTIAS;
.print "\n"
/*Para cada tabla, una consulta donde se utilice algún tipo de búsqueda (condición where) - (por ejemplo, retornar aquellos usuarios cuyo apellido empieza en 'B').*/
.print "\n"
SELECT*FROM ADMINISTRADOR;
--CONSULTAR LOS DATOS DE LOS USUARIO CUYOS NOMBRE TENGA LA LETRA "A" COMO SEGUNDO CARACTER--
SELECT*FROM USUARIO WHERE nombre LIKE '_A%';
--CONSULTAR EL ID LOS DATOS DEL PROFESOR CUYO ID ES 1001--
SELECT * FROM PROFESOR WHERE id_profesor = 1001;
--CONSULTAR EL ID Y EL NUMERO DE ESTUDIANTE DE LOS CURSOS CUYOS NOMBRE COMIENCEN CON E--
SELECT id_curso, num_estudiante FROM CURSO WHERE archivo LIKE '%E%';
--CONSULTAR LOS DATOS DE LA TABLA TAREA SI EL NOMBRE DE LA MATERIA TIENE 10 CARACTERES---
SELECT*FROM TAREA WHERE materia LIKE '__________';
--CONSULTAR LOS DATOS DE AQUELLOS ESTUDIANTES QUE NO SON AYUDANTES-- 
SELECT*FROM ESTUDIANTE WHERE ayudante=FALSE;
--CONSULTAR LOS DATOS DE LOS HORARIOS DESPUES DE LA SEMANA 6--
SELECT*FROM HORARIO WHERE N_sem>6;
--CONSULTAR EL ID DE LA TUTORIA , DEL AYUDANTE Y POR ULTIMO EL TEMA DE LA AYUDANTIA, SI EL ESTADO DE ESTE ES "TRUE"--
SELECT id_tutoria, id_ayudante, tema FROM AYUDANTIAS WHERE estado=TRUE;
.print "\n"

/*La mitad de los reportes indicados en la documentación.*/
