CREATE VIEW AyudantiasNocturnas
AS SELECT id_ayudante, tema, id_horario, id_estudiante 
FROM AYUDANTIAS
WHERE tema = "FISICA"; 

CREATE VIEW reporteAyudantias
AS SELECT id_ayudante, tema, id_horario, id_estudiante 
FROM AYUDANTIAS AY, HORARIO HO, ESTUDIANTE ES
WHERE AY.id_ayudante = ES.id_estudiante AND AY.tema = "FISICA" AND HO.fecha(YEAR) = "2021"; 