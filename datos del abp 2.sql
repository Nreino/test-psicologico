USE test_psicologico;
SELECT idparticipante, nombre, ROUND(edad, 0) AS edad, genero 
FROM participante;

/*insertar datos en la tabla participante*/
INSERT INTO participante (nombre, edad, genero) VALUES 
('Juan Perez', 18, 'Masculino'),
('Ana Gómez', 20, 'Femenino'),
('Luis Martínez',26, 'Masculino'),
('María López', 19, 'Femenino'),
('Carlos Sánchez', 21, 'Masculino'),
('Elena Torres', 23, 'Femenino'),
('Roberto Díaz', 27, 'Masculino'),
('Laura Fernández', 22, 'Femenino'),
('Javier Romero', 24, 'Masculino'),
('Carmen Muñoz', 26, 'Femenino'),
('Pedro García', 28, 'Masculino'),
('Lucía Castillo', 20, 'Femenino'),
('Sergio Ortiz', 25, 'Masculino'),
('Paula Morales', 24, 'Femenino'),
('Alberto Ruiz', 23, 'Masculino'),
('Clara Gil', 21, 'Femenino'),
('Diego Navarro', 22, 'Masculino'),
('Isabel Vázquez', 27, 'Femenino'),
('Fernando Rojas', 28, 'Masculino'),
('Sofía Méndez', 18, 'Femenino'),
('Andrés Pérez', 20, 'Masculino'),
('Natalia Rodríguez', 21, 'Femenino'),
('Miguel Herrera', 23, 'Masculino'),
('Patricia Jiménez', 25, 'Femenino'),
('Raúl Castro', 26, 'Masculino'),
('Victoria Álvarez', 24, 'Femenino'),
('Ignacio Morales', 27, 'Masculino'),
('Daniela Romero', 19, 'Femenino'),
('Gabriel Fernández', 22, 'Masculino'),
('Verónica Sánchez', 23, 'Femenino'),
('Héctor Castillo', 25, 'Masculino'),
('Adriana García', 26, 'Femenino'),
('Francisco López', 28, 'Masculino'),
('Marta González', 24, 'Femenino'),
('Álvaro Torres', 21, 'Masculino');

/* Insertar datos en la tabla test */
INSERT INTO test (nombre, descripcion, participante_idparticipante) VALUES 
('Test de Personalidad', 'Evaluación de rasgos de personalidad', 1),
('Test de Inteligencia', 'Medición de coeficiente intelectual', 2),
('Test de Habilidades Sociales', 'Evaluación de competencias en interacción social', 3),
('Test de Resiliencia', 'Medición de la capacidad de recuperación ante la adversidad', 4),
('Test de Ansiedad', 'Evaluación del nivel de ansiedad general', 5),
('Test de Depresión', 'Medición de síntomas depresivos', 6),
('Test de Estrés', 'Evaluación del nivel de estrés', 7),
('Test de Autoestima', 'Medición de la autoestima personal', 8),
('Test de Creatividad', 'Evaluación del pensamiento creativo', 9),
('Test de Liderazgo', 'Medición de habilidades de liderazgo', 10),
('Test de Empatía', 'Evaluación de la capacidad de entender y compartir emociones ajenas', 11),
('Test de Toma de Decisiones', 'Medición de habilidades en la toma de decisiones', 12),
('Test de Memoria', 'Evaluación de la capacidad de retención y recuerdo', 13);

/* Insertar datos en la tabla pregunta */
INSERT INTO pregunta (tipo, texto, test_idtest) VALUES 
('Opción Múltiple', '¿Te consideras una persona introvertida?', 1),
('Opción Múltiple', '¿Te sientes cómodo trabajando en equipo?', 2),
('Opción Múltiple', '¿Cuánto es 2 + 2?', 3),
('Opción Múltiple', '¿Tiendes a preocuparte por las cosas?', 4),
('Opción Múltiple', '¿Te resulta fácil expresar tus emociones?', 5),
('Opción Múltiple', '¿Prefieres trabajar solo o en equipo?', 6),
('Opción Múltiple', '¿Qué significa la palabra "epítome"?', 7),
('Opción Múltiple', '¿Sueles asumir riesgos en situaciones desconocidas?', 8),
('Opción Múltiple', '¿Te resulta fácil iniciar conversaciones con desconocidos?', 9),
('Opción Múltiple', '¿Cómo reaccionas ante críticas constructivas?', 10),
('Opción Múltiple', '¿Cómo manejas situaciones de estrés?', 11),
('Opción Múltiple', '¿Qué haces cuando te enfrentas a un problema difícil?', 12),
('Opción Múltiple', '¿Qué es lo primero que piensas cuando enfrentas una adversidad?', 13);

/* Insertar datos en la tabla respuesta */
INSERT INTO respuesta (texto, test_idtest, participante_idparticipante, pregunta_idpregunta) VALUES 
('Sí', 1, 1, 1),  /* Respuesta a la primera pregunta del Test de Personalidad */
('No', 2, 2, 2),  /* Respuesta a la segunda pregunta del Test de Inteligencia */
('4', 3, 3, 3),   /* Respuesta a la tercera pregunta del Test de Habilidades Sociales */
('Sí', 4, 4, 4),  /* Respuesta a la cuarta pregunta del Test de Resiliencia */
('No', 5, 5, 5),  /* Respuesta a la quinta pregunta del Test de Ansiedad */
('Prefiero trabajar en equipo', 6, 6, 6),  /* Respuesta a la sexta pregunta del Test de Depresión */
('Un resumen perfecto', 7, 7, 7),  /* Respuesta a la séptima pregunta del Test de Estrés */
('Sí', 8, 8, 8),  /* Respuesta a la octava pregunta del Test de Autoestima */
('No', 9, 9, 9),  /* Respuesta a la novena pregunta del Test de Creatividad */
('Acepto y trato de mejorar', 10, 10, 10),  /* Respuesta a la décima pregunta del Test de Liderazgo */
('Trato de mantener la calma', 11, 11, 11),  /* Respuesta a la undécima pregunta del Test de Empatía */
('Busco una solución práctica', 12, 12, 12),  /* Respuesta a la duodécima pregunta del Test de Toma de Decisiones */
('Analizo la situación y busco apoyo', 13, 13, 13);  /* Respuesta a la decimotercera pregunta del Test de Memoria */