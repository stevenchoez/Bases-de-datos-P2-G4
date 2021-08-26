CREATE TABLE ADMINISTRADOR(
	ID_ADMIN INT UNSIGNED NOT NULL UNIQUE,
	PRIMARY KEY (ID_ADMIN)
);

CREATE TABLE USUARIO(
	id_usuario INT UNSIGNED NOT NULL UNIQUE,
    tipo VARCHAR(15) NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    fecha_nacimiento DATE,
    telefono INT,
    email VARCHAR(45) NOT NULL,
    contraseña VARCHAR(45) NOT NULL,
    id_admin INT UNSIGNED NOT NULL UNIQUE,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (ID_ADMIN) REFERENCES ADMINISTRADOR(ID_ADMIN) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PROFESOR(
	id_profesor INT UNSIGNED NOT NULL UNIQUE,
    cedula CHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY(id_profesor),
    FOREIGN KEY (id_profesor) REFERENCES USUARIO(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CURSO(
	id_curso INT UNSIGNED NOT NULL UNIQUE,
    materia VARCHAR(15) NOT NULL,
    num_estudiante INT NOT NULL,
    archivos DATE,
    PRIMARY KEY (id_curso)
);

CREATE TABLE TAREA(
	id_tarea INT UNSIGNED NOT NULL UNIQUE,
    materia VARCHAR(20),
    puntuacion INT UNSIGNED NOT NULL,
    fecha_publicacion DATE,
    fecha_plazo DATE,
    fecha_entrega DATE,
    id_curso INT UNSIGNED NOT NULL,
    id_profesor INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_tarea),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ESTUDIANTE(
	id_estudiante INT UNSIGNED NOT NULL UNIQUE,
    matricula VARCHAR(15) NOT NULL,
    ayudante BOOLEAN NOT NULL,
	estado DATE,
    id_curso INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_estudiante),
    FOREIGN KEY (id_estudiante) REFERENCES USUARIO(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = innodb;

CREATE TABLE HORARIO(
	id_horario INT UNSIGNED NOT NULL UNIQUE,
    fecha DATE NOT NULL,
    h_inicio TIME NOT NULL,
    h_fin TIME NOT NULL,
    N_sem INT NOT NULL,
    id_ayudante INT UNSIGNED NOT NULL,
    PRIMARY KEY(id_horario),
    FOREIGN KEY (id_ayudante) REFERENCES ESTUDIANTE(id_estudiante) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE AYUDANTIAS(
	id_tutoria INT UNSIGNED NOT NULL UNIQUE,
    id_ayudante INT UNSIGNED NOT NULL,
    tema VARCHAR(45) NOT NULL,
    estado BOOLEAN NOT NULL,
    rating INT NOT NULL,
    id_horario INT UNSIGNED NOT NULL,
    id_estudiante INT UNSIGNED NOT NULL,
    zoom INT NOT NULL,
    link_grabacion VARCHAR(100),
    PRIMARY KEY(id_tutoria),
    FOREIGN KEY(id_ayudante) REFERENCES ESTUDIANTE(id_estudiante) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_horario) REFERENCES HORARIO(id_horario) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_estudiante) REFERENCES ESTUDIANTE(id_estudiante) ON DELETE CASCADE ON UPDATE CASCADE)