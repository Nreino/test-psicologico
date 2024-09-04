SELECT * FROM test_psicologico.participante;
SELECT * FROM test_psicologico.pregunta;
SELECT * FROM test_psicologico.respuesta;
SELECT * FROM test_psicologico.test;


/*Obtener todas las respuestas de un participante en particular*/
SELECT DISTINCT r.texto AS respuesta, p.texto AS pregunta 
FROM respuesta r, pregunta p 
WHERE r.pregunta_idpregunta = p.idpregunta 
AND r.participante_idparticipante = 7;

/*Muestra las preguntas y respuestas de un participante específico, ordenadas por la fecha de respuesta más reciente*/
SELECT p.texto AS pregunta, r.texto AS respuesta 
FROM pregunta p, respuesta r 
WHERE p.idpregunta = r.pregunta_idpregunta 
AND r.participante_idparticipante = 1 
ORDER BY r.fecha DESC; 

/* Cuenta la cantidad de respuestas dadas por un participante específico*/
SELECT COUNT(*) AS total_respuestas 
FROM respuesta r, participante p 
WHERE r.participante_idparticipante = p.idparticipante 
AND p.nombre = 'Juan Perez';

/*Lista los nombres de los participantes que han respondido al menos una pregunta*/
SELECT DISTINCT p.nombre 
FROM participante p, respuesta r 
WHERE p.idparticipante = r.participante_idparticipante;

/*Muestra las preguntas y respuestas de un participante específico, ordenadas por la fecha de respuesta más reciente*/
SELECT p.texto AS pregunta, r.texto AS respuesta 
FROM pregunta p, respuesta r 
WHERE p.idpregunta = r.pregunta_idpregunta 
AND r.participante_idparticipante = 5 
ORDER BY r.fecha DESC;

/*Muestra las preguntas de un test específico que han sido respondidas por al menos un participante*/
SELECT DISTINCT p.texto 
FROM pregunta p, test t, respuesta r 
WHERE p.test_idtest = t.idtest 
AND r.pregunta_idpregunta = p.idpregunta 
AND t.nombre = 'Test de Personalidad';




DROP DATABASE test_psicologico;
