create database Trivia;

use Trivia;

CREATE TABLE Preguntas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pregunta VARCHAR(255) NOT NULL,
    respuesta VARCHAR(255) NOT NULL,
	distractor1 VARCHAR(255) NOT NULL,
    distractor2 VARCHAR(255) NOT NULL,
    distractor3 VARCHAR(255) NOT NULL
);

CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    instagram VARCHAR(255),
    puntaje INT,
    tiempo INT,
    pregunta_id INT,
    FOREIGN KEY (pregunta_id) REFERENCES Preguntas(id)
);

insert into Preguntas (pregunta, Respuesta, distractor1, distractor2, distractor3)
values ('¿En qué año se fundó?', '1983', '1974', '1083 A.C', '2000'),
('¿Cuál fue el nombre del establecimiento educativo cuando se fundó?', 'Complejo Facultativo de Enseñanza Superior San Francisco de Asís', 'Instituto Superior Arturo Umberto Illia', 'Instituto Academico de Formación Para el trabajo', 'Escuela de Nivel Terciario Nacional'),
('¿En qué año se convierte a colegio Nacional?', '1985', '2001', '1990', '1964'),
('¿Cuántos directores tuvo el Instituto hasta la fecha?', '4', '5', '3' , '1'),
('¿Cuántas carreras se dictan actualmente en el ISAUI?', '6', '5', '7', '3'),
('Cuál fue el primer número de teléfono del Instituto?', '41164', '98271', 'No tenia', '37831'),
('¿Qué es el workshop?', 'Es una técnica de venta', 'Un lugar para ir de compras', 'El trabajo final de los alumnos de 1ero de Diseño', 'El trabajo que se les otorga a los alumnos de Desarrollo de Software'),
('¿Qué carrera fue la pionera con los viajes en las materias de prácticas?', 'Técnico y guía superior en turismo', 'Técnico superior en desarrollo de software', 'Técnico superior en marketing', 'Enfermería'),
('¿Cómo era el edificio  educativo en sus comienzos?', 'Una casa con 3 ambientes que se convirtieron en aulas', 'Un hotel', 'Una cantina', 'Un edificio con 2 plantas'),
('¿ISAUI es un Instituto público?', 'Sí', 'No', 'Tal vez', 'Semi_privado'),
('¿A partir de que año la cooperadora empezó a construir las aulas?', 'A partír de 1986 a razón de una por año', '1985 Realizo todas las actuales', '1999 y se termino la construcción en el 2001', '1870'),
('¿De donde provenía el dinero?', 'Del bono contribución que abonaban los padres', 'Del Gobierno de Córdoba', 'De un Jeque Arabe', 'Los fundadores fueron quienes aportaron el dinero'),
('¿Quíen fue el presidente de la cooperadora en esos años?', 'SR.Gatica, luego el SR. Constante Bogado por muchos años', 'Carlitos Tevez', 'Marcelo Gallardo', 'SR.Lugano y luego la SRA.Cristina Ruiz y por ultimo y actual EL SR. Constante Bogado'),
('¿Quién es la presidenta de la cooperadora actualmente?', 'Daniela Maschio', 'SRA.Cristina Ruiz', 'SR.Constante Bogado', 'SR.Diaz Cristian'),
('¿Cómo se logro la nacionalización?', 'Mediante la gestión del diputado de V.Carlos Paz Anselmo Pelaez', 'Fue un acuerdo mutuo con la gestion de Malagueño', 'Gracias al precidente de la nacion del año en el que se fundo', 'Porque si');

