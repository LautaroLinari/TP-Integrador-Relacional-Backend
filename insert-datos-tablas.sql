USE trailerflix;

INSERT INTO categorias (ID, nombre_categoria) VALUES
(1, 'Serie'),
(2, 'Película');


INSERT INTO generos (ID, nombre_genero) VALUES
(1, 'Drama'),
(2, 'Misterio'),
(3, 'Sci-Fi'),
(4, 'Acción'),
(5, 'Aventura'),
(6, 'Comedia'),
(7, 'Fantasía'),
(8, 'Terror'),
(9, 'Suspenso'),
(10, 'Romance'),
(11, 'Familia'),
(12, 'Suceso Real'),
(13, 'Historia'),
(14, 'Animación'),
(15, 'Música'),
(16, 'Tecnología'),
(17, 'Ficción'),
(18, 'Sucesos'),
(19, 'Crimen'),
(20, 'Western'),
(21, 'Futurista'),
(22, 'Intriga');




INSERT INTO contenidos (ID, id_categoria, titulo, resumen, duracion, temporadas, enlaces_trailer) VALUES
(1, 1, 'The Crown', 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 'N/A', 4, 'https://www.youtube.com/embed/JWtnJjn6ng0'),
(2, 1, 'Riverdale', 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 'N/A', 5, 'https://www.youtube.com/embed/HxtLlByaYTc'),
(3, 1, 'The Mandalorian', 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia.', 'N/A', 2, 'https://www.youtube.com/embed/aOC8E8z_ifw'),
(4, 1, 'The Umbrella Academy', 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 'N/A', 1, 'https://www.youtube.com/embed/KHucKOK-Vik'),
(5, 1, 'Gambito de Dama', 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 'N/A', 1, 'https://www.youtube.com/embed/lbleRbyGKL4'),
(6, 2, 'Enola Holmes', 'La hermana menor de Sherlock descubre que su madre ha desaparecido y se dispone a encontrarla.', '97 minutos', NULL,'https://www.youtube.com/embed/3t1g2pa355k'),
(7, 2, 'Guasón', 'Arthur Fleck es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma.', '97 minutos', NULL, 'https://www.youtube.com/embed/zAGVQLHvwOY'),
(8, 2, 'Avengers: End Game', 'Después de los devastadores eventos de los Vengadores: Infinity War, el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', '97 minutos', NULL, 'https://www.youtube.com/embed/TcMBFSGVi1c'),
(9, 1, 'Juego de Tronos', 'En un mundo fantástico y en un contexto medieval, varias familias se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro.', 'N/A', 8, 'https://www.youtube.com/embed/KPLWWIOCOOQ'),
(10, 1, 'The Flash', 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades.', 'N/A', 6, 'https://www.youtube.com/embed/Yj0l7iGKh8g'),
(11, 1, 'The Big Bang Theory', 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 'N/A', 12, 'https://www.youtube.com/embed/WBb3fojgW0Q'),
(12, 1, 'Friends', 'Aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla que vive en Manhattan y se reúne en sus apartamentos o en su cafetería habitual, el Central Perk.','N/A', 10, 'https://www.youtube.com/embed/8L-1Qk_MQQs'),
(13, 1, 'Anne with an "E"', 'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea en 1890. Tras una infancia difícil, es enviada por error a vivir con una solterona y su hermano, y transformará su vida y su entorno con su imaginación y fuerte personalidad.','N/A', 2, 'https://www.youtube.com/embed/M4T-_aB8smU'),
(14, 1, 'Expedientes Secretos "X"', 'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales o porque el gobierno se ha encargado de ocultar pruebas. Mulder busca a su hermana desaparecida, secuestrada por desconocidos.','N/A', 11, 'https://www.youtube.com/embed/KKziOmsJxzE'),
(15, 1, 'Chernobyl', 'Sigue la verdadera historia de una de las peores catástrofes provocadas por el hombre, centrándose en los valientes que se sacrificaron para salvar a Europa de un desastre inimaginable tras el accidente en la planta nuclear de Ucrania en 1986.','N/A', 1, 'https://www.youtube.com/embed/s9APLXM9Ei8'),
(16, 1, 'Westworld', 'Westworld es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado, ambientada en un parque temático futurista donde los androides satisfacen todos los deseos humanos.','N/A', 3, 'https://www.youtube.com/embed/qLFBcdd6Qw0'),
(17, 1, 'Halt and Catch Fire', 'Situada en los inicios de la década de 1980, la serie sigue a un grupo de visionarios que intentan revolucionar la tecnología personal y enfrentan los desafíos de la industria.','N/A', 4, 'https://www.youtube.com/embed/pWrioRji60A'),
(18, 2, 'Ava', 'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas y debe enfrentarse a una misión que pone en peligro su vida.','97 minutos', NULL, 'https://www.youtube.com/embed/eLEwNo78f0k'),
(19, 2, 'Aves de presa (Harley Quinn)', 'Después de separarse de Joker, Harley Quinn y otras tres heroínas deben unirse para derrotar a un villano que amenaza sus vidas.','97 minutos', NULL, 'https://www.youtube.com/embed/saUmnenKbBM'),
(20, 2, 'Archivo', 'George Almore está trabajando en una verdadera IA equivalente a la humana y debe resolver un misterio que pone en peligro su vida.','97 minutos', NULL, 'https://www.youtube.com/embed/VHSoCnDioAo'),
(21, 2, 'Jumanji - The Next Level', 'Las aventuras continúan en el fantástico mundo del videojuego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades.','97 minutos', NULL, 'https://www.youtube.com/embed/rBxcF-r9Ibs'),
(22, 2, '3022', 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La narrativa se desarrolla a través de una serie de flashbacks y flash-forwards.','97 minutos', NULL, 'https://www.youtube.com/embed/AGQ7OkmIx4Q'),
(23, 2, 'IT - Capítulo 2', 'Han pasado 27 años desde que el "Club de los Perdedores", formado por Bill, Beverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaron al macabro y despiadado Pennywise. Ahora, como adultos, deben regresar a Derry para enfrentar una vez más al temible payaso y superar los traumas de su infancia.','97 minutos', NULL, 'https://www.youtube.com/embed/hZeFeYSmBcg'),
(24, 2, 'Pantera Negra', 'T’Challa regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Como Pantera Negra, debe proteger su nación de una nueva amenaza que podría desestabilizar el mundo.','97 minutos', NULL, 'https://www.youtube.com/embed/BE6inv8Xh4A'),
(25, 2, 'Contra lo imposible (Ford vs Ferrari)', 'Basada en la historia real del diseñador de automóviles Carroll Shelby y el piloto Ken Miles, quienes trabajan juntos para construir un nuevo coche de carreras para Ford Motor Company y enfrentarse a Enzo Ferrari en las 24 Horas de Le Mans en 1966.','97 minutos', NULL, 'https://www.youtube.com/embed/SOVb0-2g1Q0'),
(26, 2, 'Centígrados', 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Tras detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.','97 minutos', NULL, 'https://www.youtube.com/embed/0RvV7TNUlkQ'),
(27, 2, 'DOOM: Aniquilación', 'Un grupo de marines espaciales responde a una llamada de alerta de una base en la luna marciana, descubriendo que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.','97 minutos', NULL, 'https://www.youtube.com/embed/nat3u3gAVLE'),
(28, 2, 'Contagio', 'Un virus mortal comienza a propagarse por todo el mundo, originado por una viajera estadounidense que desata una crisis sanitaria global. La trama sigue a varios personajes mientras lidian con el impacto de la epidemia.','97 minutos', NULL, 'https://www.youtube.com/embed/4sYSyuuLk5g'),
(29, 2, 'Viuda Negra', 'Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel, que explora su historia y desafíos, desde su infancia hasta su carrera como espía y heroína.','97 minutos', NULL, 'https://www.youtube.com/embed/BIn8iANwEog'),
(30, 2, 'The Martian', 'Durante una misión a Marte, el astronauta Mark Watney es dado por muerto y queda atrapado solo en el planeta. Con su ingenio y determinación, intenta sobrevivir mientras se comunica con la Tierra para ser rescatado.','97 minutos', NULL, 'https://www.youtube.com/embed/XvB58bCVfng'),
(31, 2, 'Ex-Machina', 'Un programador es seleccionado para participar en un test con una inteligencia artificial avanzada en forma de robot. La interacción entre ambos pone a prueba los límites de la inteligencia artificial y la ética.', '97 minutos', NULL, 'https://www.youtube.com/embed/XRYL5spvEcI'),
(32, 2, 'Jurassic World', 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, donde un nuevo dinosaurio de especie desconocida escapa y comienza a causar estragos entre los visitantes.', '97 minutos', NULL, 'https://www.youtube.com/embed/RFinNxS5KN4'),
(33, 2, 'Soy leyenda', 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.', '97 minutos', NULL, 'https://www.youtube.com/embed/dtKMEAXyPkg'),
(34, 2, 'El primer hombre en la luna', 'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.', '97 minutos', NULL, 'https://www.youtube.com/embed/PSoRx87OO6k'),
(35, 2, 'Titanes del Pacífico - La insurrección', 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Los supervivientes de la primera invasión, junto a nuevos personajes, deben idear nuevas estrategias defensivas y de ataque.', '97 minutos', NULL, 'https://www.youtube.com/embed/_EhiLLOhVis'),
(36, 2, 'JOBS: La Vida De Steve Jobs', 'La extraordinaria historia de Steve Jobs, desde sus inicios hasta convertirse en el innovador que cambió el mundo de la tecnología. La película retrata su vida desde su juventud, sus luchas y triunfos hasta el lanzamiento del iPod y el iPhone.','104 minutos', NULL, 'https://www.youtube.com/embed/FrvkCS0ZGPU'),
(37, 2, 'Piratas de Silicon Valley', 'Esta película es un documental semigracioso sobre los hombres que hicieron el mundo de la tecnología lo que es hoy. Muestra las luchas de Steve Jobs y Bill Gates mientras compiten por dominar la industria de los computadores.','104 minutos', NULL, 'https://www.youtube.com/embed/lEyrivrjAuU'),
(38, 2, 'Red Social', 'En una noche de otoño de 2003, Mark Zuckerberg, un estudiante de Harvard, crea un sitio web que se convierte en una red social global y una revolución en la comunicación, mientras enfrenta complicaciones tanto personales como legales.','116 minutos', NULL, 'https://www.youtube.com/embed/lB95KLmpLR4'),
(39, 2, 'Antitrust', 'Milo Hoffman es un joven informático que es contratado por una empresa de Silicon Valley. Al principio parece el trabajo de sus sueños, pero pronto descubre secretos oscuros que amenazan su vida y su carrera.', '110 minutos', NULL, 'https://www.youtube.com/embed/k3TwIJjyjPM'),
(40, 2, 'Stowaway', 'Tres tripulantes en una misión a Marte deben tomar una decisión imposible cuando un cuarto pasajero inesperado pone en riesgo sus vidas. La supervivencia de todos depende de la elección que deben hacer.','118 minutos', NULL, 'https://www.youtube.com/embed/A_apvQkWsVY'),
(41, 2, 'Liga de la Justicia - Zack Snyder', 'Bruce Wayne y Diana Prince forman un equipo de metahumanos para proteger al mundo de una amenaza de proporciones catastróficas. Juntos buscan reunir a un grupo de héroes para combatir el mal que se avecina.','242 minutos', NULL, 'https://www.youtube.com/embed/BUb_-RxsoBs'),
(42, 1, 'Two and a Half Men', 'Un quiropráctico y su hijo se mudan con un millonario de internet tras la muerte del hermano mayor. Juntos enfrentan la vida diaria en un entorno cómico y caótico.','N/A', 12, 'https://www.youtube.com/embed/mVHDanSl2pc'),
(43, 1, 'La casa de Papel', 'Ocho ladrones toman rehenes en la Fábrica Nacional de Moneda y Timbre de España mientras su líder manipula a la policía, con el objetivo de realizar el mayor atraco en la historia.','N/A', 4, 'https://www.youtube.com/embed/w1jkStuRQU8'),
(44, 1, 'Stranger Things', 'Pasan cosas muy extrañas en Hawkins, Indiana, tras la desaparición de un niño, lo que revela la presencia de una niña con poderes sobrenaturales y un mundo alternativo conocido como el “Otro Lado”.','N/A', 4, 'https://www.youtube.com/embed/b9EkMc79ZSU'),
(45, 2, 'Gravity', 'Durante un paseo espacial rutinario, dos astronautas sufren un grave accidente y quedan flotando en el espacio. Una es la doctora Ryan Stone, una brillante ingeniera en su primera misión espacial, y su compañero es el veterano astronauta Matt Kowalsky. Juntos deben luchar por sobrevivir y regresar a la Tierra.','93 minutos', NULL, 'https://www.youtube.com/embed/OiTiKOy59o4'),
(46, 2, 'Apollo 13', 'El Apolo 13 inicia su viaje a la luna en abril de 1970. Cuando la tripulación está a punto de llegar a su destino, una explosión en el espacio les hace perder oxígeno, energía y el curso de la nave. Todo se convierte en una situación desesperada para los tres hombres tripulantes, especialmente cuando el oxígeno amenaza con agotarse. Mientras tanto, el mundo entero contiene la respiración a la espera de ver cómo acaba tan angustiosa espera.','140 minutos', NULL, 'https://www.youtube.com/embed/e3ZtOS4MCkk'),
(47, 2, 'La Profecía', 'Incapaz de decirle a su mujer Katherine la trágica muerte de su hijo recién nacido, el diplomático americano Robert Thorn acepta un huérfano como su hijo. Los detalles del nacimiento del chico son un secreto, pero cuando Damien va creciendo, empieza a dar muestras de que no es un chico corriente.','110 minutos', NULL, 'https://www.youtube.com/embed/8L-1Qk_MQQs'),
(48, 2, 'El Exorcista', 'Regan es una niña de doce años víctima de fenómenos paranormales como la levitación o la manifestación de una fuerza sobrehumana. Su madre, aterrorizada, tras someter a su hija a múltiples análisis médicos que no ofrecen ningún resultado, acude a un sacerdote con estudios de psiquiatría. Este sacerdote, convencido de que el mal no es físico sino espiritual, decide practicar un exorcismo.', '122 minutos', NULL, 'https://www.youtube.com/embed/YDGw1MTEe9k'),
(49, 2, 'It (Eso)', 'Remake del clásico de Stephen King, donde un grupo de niños conocidos como el Club de los Perdedores deben enfrentarse a Pennywise, un payaso que aterroriza a los niños de un vecindario en el pequeño pueblo de Maine.', '135 minutos', NULL, 'https://www.youtube.com/embed/FnCdOQsX5kc'),
(50, 1, 'The Office', 'Un vistazo fresco y divertido, en formato pseudo-documental, a la vida de los empleados de la empresa Dunder Mifflin. A través de las interacciones de sus excéntricos trabajadores, la serie muestra el día a día en la oficina, con un estilo que mezcla comedia y drama.','N/A', 9, 'https://www.youtube.com/embed/LHOtME2DL4g'),
(51, 1, 'The Good Doctor', 'Un joven cirujano autista que padece el síndrome del sabio comienza a trabajar en un prestigioso hospital, donde debe enfrentarse al escepticismo de sus colegas mientras demuestra su valía como médico.','N/A', 4, 'https://www.youtube.com/embed/fYlZDTru55g'),
(52, 2, 'La teoría del todo', 'La historia de Stephen Hawking, centrada en su relación con su primera mujer, Jane Wilde, y su diagnóstico de ELA, que pone a prueba su matrimonio y su extraordinaria carrera como físico teórico.','123 minutos', NULL, 'https://www.youtube.com/embed/Salz7uGp72c'),
(53, 2, 'Código enigma', 'La historia de Alan Turing y su equipo al descifrar el código de la máquina Enigma durante la Segunda Guerra Mundial, lo que fue crucial para la victoria aliada. La película también explora su vida personal y la persecución que sufrió por su orientación sexual.','115 minutos', NULL, 'https://www.youtube.com/embed/nuPZUUED5uk'),
(54, 2, 'Talentos ocultos', 'La historia de tres brillantes mujeres científicas afroamericanas que trabajaron en la NASA en los años 60 y ayudaron a llevar al hombre a la luna, enfrentándose a la discriminación racial y de género.','127 minutos', NULL, 'https://www.youtube.com/embed/RK8xHq6dfAo'),
(55, 2, 'Una mente brillante', 'La vida de John Nash, un brillante matemático que lucha contra la esquizofrenia mientras desarrolla su carrera y se convierte en un referente en la teoría de los juegos.','134 minutos', NULL, 'https://www.youtube.com/embed/jT51irTIrAc'),
(56, 2, 'Passengers', 'En una nave espacial rumbo a un planeta lejano, un pasajero se despierta 90 años antes de lo planeado. Al descubrir que la nave tiene un fallo, se enfrenta a decisiones difíciles que afectarán a todos a bordo.','116 minutos', NULL, 'https://www.youtube.com/embed/7BWWWQzTpNU'),
(57, 2, 'Passengers', 'Un avión se estrella y solo sobreviven cinco personas. Asignada al caso por su mentor, la joven terapeuta Claire, una brillante psicóloga, deberá ayudar a los supervivientes a superar el trauma. Pero, poco a poco, estos empiezan a desaparecer misteriosamente o a no aparecer en las sesiones. Nada está claro, ni siquiera qué pasó en el accidente. Además, entre los supervivientes está Eric, un atractivo pasajero que parece no necesitar terapia.','93 minutos', NULL, 'https://www.youtube.com/embed/iMW4RpQmJJQ'),
(58, 2, 'Argo', 'Irán, año 1979. Cuando la embajada de los Estados Unidos en Teherán es ocupada por seguidores del Ayatolá Jomeini, la CIA organiza una operación para rescatar a seis diplomáticos estadounidenses que se habían refugiado en la casa del embajador de Canadá. La estrategia involucra simular el rodaje de una película de ciencia ficción llamada "Argo".', '120 minutos', NULL, 'https://www.youtube.com/embed/SOVb0-2g1Q0'),
(59, 2, 'Prometheus', 'Un grupo de científicos y exploradores emprende un viaje espacial a un remoto planeta, donde buscan respuestas sobre los orígenes de la humanidad. Sin embargo, a medida que profundizan en sus investigaciones, se dan cuenta de que están a punto de descubrir horrores inimaginables.','120 minutos', NULL, 'https://www.youtube.com/embed/3TnV3IuYxY0'),
(60, 2, 'Alien: Covenant', 'La nave colonizadora Covenant descubre un planeta remoto que parece ser un paraíso, pero lo que encuentran es más aterrador que cualquier cosa que hayan imaginado. A medida que exploran, descubren que el mundo es un lugar oscuro y hostil, habitado por un único sobreviviente de una misión previa.','122 minutos', NULL, 'https://www.youtube.com/embed/0bX3u6LwWdk'),
(61, 2, 'Life: La vida inteligente', 'Seis miembros de la tripulación de la Estación Espacial Internacional están a punto de lograr uno de los descubrimientos más importantes en la historia humana: la primera evidencia de vida extraterrestre en Marte. Sin embargo, a medida que investigan, la forma de vida demuestra ser más inteligente y peligrosa de lo que esperaban.','106 minutos', NULL, 'https://www.youtube.com/embed/bSaq_P8gD8Q'),
(62, 2, 'Madame Curie', 'La historia de la vida de Marie Curie, quien fue la primera mujer en ganar un Premio Nobel y hizo importantes descubrimientos en el campo de la radioactividad, así como su lucha por el reconocimiento en un mundo dominado por hombres.','115 minutos', NULL, 'https://www.youtube.com/embed/rGTLGzDZZ_Y'),
(63, 2, 'The IT Crowd', 'Una comedia sobre los empleados del departamento de TI de una gran empresa que deben lidiar con la tecnología, así como con los problemas de la vida diaria y la falta de comprensión de sus compañeros de trabajo.', 'N/A', 4, 'https://www.youtube.com/embed/VgOdQdTV9H4'),
(64, 1, 'Humans', 'En un mundo donde los robots humanoides son parte de la vida cotidiana, surgen preguntas sobre la inteligencia artificial y los dilemas éticos que plantea, explorando el impacto en la sociedad y las relaciones humanas.','N/A', 3, 'https://www.youtube.com/embed/rM60ML4An0Y'),
(65, 2, 'Need for Speed', 'Un exconvicto se embarca en una carrera a través de Estados Unidos para vengarse de un amigo traidor. La competencia es intensa y debe enfrentarse a peligros en su camino hacia la redención.','130 minutos', NULL, 'https://www.youtube.com/embed/0GzY60zQjL4'),
(66, 1, 'Mare of Easttown', 'Una detective de un pequeño pueblo investiga un asesinato local mientras lidia con sus propios problemas personales. La serie profundiza en el impacto de la tragedia en la comunidad y en la vida de la protagonista.','N/A', 1, 'https://www.youtube.com/embed/ZzIu-2PaQqQ'),
(67, 2, 'Ray', 'La historia de la vida del legendario músico Ray Charles, desde su infancia hasta su éxito en la música, enfrentándose a la adversidad y la adicción mientras se convierte en una de las figuras más influyentes de la música americana.','152 minutos', NULL, 'https://www.youtube.com/embed/0FHGWgW8lWs'),
(68, 1, 'Black Mirror', 'Black Mirror es una serie de televisión británica creada por Charlie Brooker que muestra el lado oscuro de la vida y la tecnología. Cada episodio es una historia independiente que explora el impacto de la tecnología en la sociedad, a menudo con un tono distópico y satírico.','N/A', 5, 'https://www.youtube.com/embed/2K3MfLQJ4-M'),
(69, 1, 'Detrás de tus ojos', 'Una madre soltera se adentra en un mundo de retorcidos juegos psicológicos cuando inicia una relación cuasi-no consentida con su jefe, un psiquiatra, y se hace amiga en secreto de su misteriosa esposa. La trama se desarrolla en un thriller sobre un triángulo amoroso que da un giro inesperado.','N/A', 1, 'https://www.youtube.com/embed/57MYqA0qCXo'),
(70, 2, 'Her', 'En un futuro cercano, Theodore, un hombre solitario a punto de divorciarse que trabaja en una empresa como escritor de cartas para terceras personas, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial, diseñado para satisfacer todas las necesidades del usuario. Para su sorpresa, se crea una relación romántica entre él y Samantha, la voz femenina de ese sistema operativo.','126 minutos', NULL, 'https://www.youtube.com/embed/8mR1fK42p2A'),
(71, 2, 'Misión Imposible', 'Ethan Hunt es un superespía que forma parte de un competente equipo dirigido por el agente Jim Phelps. Este último ha reunido a su equipo para participar en una misión difícil: evitar la venta de un disco robado que contiene información secreta de vital importancia.','110 minutos', NULL, 'https://www.youtube.com/embed/Zp-Dkw5yijA'),
(72, 2, 'El Agente de C.I.P.O.L.', 'Durante la Guerra Fría, dos agentes secretos, Napoleon Solo, de la CIA, e Illya Kuryakin, del KGB, se ven obligados a olvidar sus diferencias y formar un equipo para detener a una misteriosa organización criminal que amenaza con desestabilizar el equilibrio de poder mundial.', '116 minutos', NULL, 'https://www.youtube.com/embed/f0ZEk4PZxEU'),
(73, 1, 'Jumanji: Bienvenidos a la Jungla', 'Cuatro adolescentes son absorbidos por un videojuego, donde se convierten en avatares de personajes arquetípicos. Allí vivirán múltiples aventuras mientras buscan la manera de salir y regresar a su mundo.','119 minutos', NULL, 'https://www.youtube.com/embed/2nY04V6RMKs'),
(74, 2, 'Mujer Maravilla 1984', 'En 1984, en plena guerra fría, Diana Prince, conocida como La Mujer Maravilla, se enfrenta al empresario Maxwell Lord y a su antigua amiga Barbara Minerva / Cheetah, una villana que posee fuerza y agilidad sobrehumanas.','151 minutos', NULL, 'https://www.youtube.com/embed/XW94h5N7mmE'),
(75, 2, 'El Contador', 'Christian Wolff es un contable y genio matemático, un hombre obsesivo con el orden y con mucha más afinidad con los números que con las personas, que lleva una doble vida como asesino despiadado. Cuando su última asignación lo enfrenta a una red criminal, debe utilizar sus habilidades para sobrevivir.','128 minutos', NULL, 'https://www.youtube.com/embed/zQO9l7P7b70'),
(76, 2, 'Mala Educación', 'La historia de Frank Tassone, uno de los superintendentes más destacados del distrito escolar de Roslyn en Nueva York, quien se lucra con dinero público para llevar una vida llena de lujos, convirtiéndose en el principal sospechoso del mayor escándalo de malversación de fondos ocurrido en una escuela pública en la historia de EE.UU.','108 minutos', NULL, 'https://www.youtube.com/embed/eTBOHz8e7iY'),
(78, 2, 'Noche en el Museo', 'Un padre divorciado trata de establecerse, impresionar a su hijo y encontrar su destino. Él se presenta para un trabajo como vigilante nocturno en el Museo Americano de Historia Natural de Nueva York y descubre que los objetos animados por un artefacto mágico de Egipto cobran vida por la noche. Se embarca en una aventura mágica con personajes históricos.','108 minutos', NULL, 'https://www.youtube.com/embed/Z38cOs1z8pA'),
(79, 2, 'Bohemian Rhapsody', 'Bohemian Rhapsody es una rotunda y sonora celebración de Queen, de su música y de su extraordinario cantante Freddie Mercury, que desafió estereotipos e hizo añicos tradiciones para convertirse en uno de los showmans más queridos del mundo. La película plasma el meteórico ascenso al olimpo de la música de la banda a través de sus icónicas canciones y su revolucionario sonido, su crisis cuando el estilo de vida de Mercury estuvo fuera de control, y su triunfal reunión en la víspera del Live Aid, en la que Mercury, mientras sufría una enfermedad que amenazaba su vida, lidera a la banda en uno de los conciertos de rock más grandes de la historia.','134 minutos', NULL, 'https://www.youtube.com/embed/mP0VHJdE0F8'),
(80, 2, 'Rock of Ages', 'Los Ángeles, 1987: Un aspirante a roquero y una chica que trabajan en el mismo club (Bourbone Room) se enamoran y tratan de impedir que el local caiga en manos de unos empresarios que quieren demolerlo. Esta película es la adaptación cinematográfica del musical homónimo de Broadway.','123 minutos', NULL, 'https://www.youtube.com/embed/j8H3E5zXW_U'),
(81, 2, 'Super 8', 'Año 1979, en un pequeño pueblo de Ohio. Joe Lamb (Joel Courtney) es un muchacho que ha perdido a su madre en un accidente y que vive con su padre policía (Kyle Chandler). Comenzado el verano, y mientras rueda una película de zombis en Super 8 con sus amigos -y sobre todo con la bella Alice Dainard (Elle Fanning)-, Joe observa cómo una camioneta se estrella contra un tren de mercancías, provocando su descarrilamiento y un terrible accidente. A partir de ese momento cosas extrañas e inexplicables comienzan a suceder en el pueblo.','82 minutos', NULL, 'https://www.youtube.com/embed/4H8wYIHXSe0'),
(82, 2, 'Jurassic World - El reino caído', 'Tras cuatro años de abandono del complejo turístico Jurassic World, la isla Nublar solo está habitada por los dinosaurios supervivientes, pero el volcán inactivo de la isla comienza a cobrar vida, Owen y Claire montan una campaña para rescatar a los dinosaurios restantes en la isla.','82 minutos', NULL, 'https://www.youtube.com/embed/vn9mMeWcgoM'),
(83, 2, 'Indiana Jones', 'El arqueólogo aventurero Indiana Jones debe recuperar el Arca de la Alianza antes de que caiga en manos de los nazis.','127 minutos', NULL, 'https://www.youtube.com/embed/3dHcVxMZ_T8'),
(84, 2, 'Los Goonies', 'Mikey, un muchacho de trece años, que junto con su hermano mayor y sus amigos se hacen llamar "Los Goonies", decide subir a jugar al desván de su casa, donde su padre guarda antigüedades. Allí, el grupo encuentra el mapa de un tesoro y emprende un fabuloso viaje para validar la veracidad de dicho mapa, y encontrar ese tesoro tan preciado por estos amigos inseparables.','114 minutos', NULL, 'https://www.youtube.com/embed/qzM7V77ZswM'),
(85, 2, 'Cars', 'El aspirante a campeón de carreras Rayo McQueen está sobre la vía rápida al éxito, la fama y todo lo que él había soñado, hasta que por error toma un desvío inesperado en la polvorienta y solitaria Ruta 66. Su actitud arrogante se desvanece cuando llega a una pequeña comunidad olvidada que le enseña las cosas importantes de la vida que había olvidado.','114 minutos', NULL, 'https://www.youtube.com/embed/M6_GZcb9R0s'),
(86, 2, 'Los pingüinos de Madagascar', 'Los pingüinos llevan sus misiones en su hábitat en el Parque Central. Aparecen Julien, el rey de los lémures, y sus súbditos Maurice y Mort, sus nuevos vecinos, que constituyen la exhibición de lémures en el zoológico. Ahora los pingüinos deben mantener las cosas bajo control, a menudo a pesar de las payasadas de los lémures así como auxiliar en labores poco comunes o aventuras fuera de lo común.','101 minutos', NULL, 'https://www.youtube.com/embed/Vb7d4mRH7nM'),
(87, 2, 'Cementerio de Animales', 'La historia de una familia que se muda a un pequeño pueblo y descubre un cementerio donde los animales pueden regresar a la vida, pero a un costo aterrador.','103 minutos', NULL, 'https://www.youtube.com/embed/4HZ8kd9TB4U'),
(88, 2, 'Poltergeist', 'Una familia se enfrenta a fenómenos paranormales en su hogar, donde las fuerzas malignas secuestran a su hija pequeña.','114 minutos', NULL, 'https://www.youtube.com/embed/e0qU7D5h77g'),
(89, 2, 'El Código Da Vinci', 'Un profesor de simbología se ve envuelto en un misterio que abarca siglos cuando es llamado a investigar un asesinato en el Louvre.','249 minutos', NULL, 'https://www.youtube.com/embed/DdNFW5f6HcE'),
(90, 2, 'Johnny English', 'Las joyas de la Corona de su Majestad han desaparecido. Detrás de ello se esconde Pascal Sauvage (John Malkovich), que también conspira para hacerse con el trono de la reina. La misión es asignada a Johnny English (Rowan Atkinson), un agente tan entregado al trabajo como inexperto. Desde ese momento, la información confidencial, los coches de lujo y la tecnología más sofisticada forman parte de su rutina diaria.','188 minutos', NULL, 'https://www.youtube.com/embed/EG0MR5dFz7E'),
(91, 2, 'Almost Famous', 'Homenaje al rock de los 70. Gracias a sus buenas críticas musicales, un adolescente que aspira a ser periodista es contratado por la revista "Rolling Stone" para cubrir la gira de una famosa banda. A pesar de su juventud y de la oposición de su madre, el chico vivirá con los músicos y sus fans una aventura inolvidable. Basada en la propia experiencia de Crowe.','122 minutos', NULL, 'https://www.youtube.com/embed/aQXh_AaJXaM'),
(92, 2, 'Escuela de Rock', 'Dewey Finn -Jack Black- es un guitarrista con delirios de grandeza que es expulsado de su banda. Desesperado por encontrar un trabajo ante su falta de dinero, suplanta la identidad de un profesor sustituto para dar clase en una escuela privada a los pequeños alumnos pre-adolescentes de 5° grado a los que intentará enseñarles el "rock & roll de alto voltaje".','110 minutos', NULL, 'https://www.youtube.com/embed/TExoc0MG4I4'),
(93, 2, 'Mi Pobre Angelito', 'Kevin McAllister es un niño de ocho años, miembro de una familia numerosa, que accidentalmente se queda abandonado en su casa cuando toda la familia se marcha a pasar las vacaciones a Francia. Kevin aprende a valerse por sí mismo e incluso a protegerse de Harry y Marv, dos bribones que se proponen asaltar todas las casas cerradas de su vecindario.','102 minutos', NULL, 'https://www.youtube.com/embed/jEDaVHmw7r4'),
(94, 2, 'Aprendices Fuera de Línea', 'Cuando dos cuarentones vendedores de relojes son despedidos, deciden buscar trabajo en la empresa más exitosa de Internet: Google. Se enfrentan a jóvenes veinteañeros que parecen más adaptados a la nueva tecnología.','125 minutos', NULL, 'https://www.youtube.com/embed/eyA-H3S-lO0'),
(95, 2, 'Outsourced', 'Un gerente de ventas es enviado a India para entrenar a un equipo de trabajadores en una nueva sede de la compañía, donde enfrenta diferencias culturales y desafíos laborales.','N/A', 1, 'https://www.youtube.com/embed/Vc2z97gIvM4'),
(96, 2, 'Miedo Profundo', 'Un grupo de buceadores queda atrapado en una cueva submarina y se enfrentan a peligros mortales mientras intentan escapar.','86 minutos', NULL, 'https://www.youtube.com/embed/QObfSxHpH0o'),
(97, 2, 'Everest', 'Basada en la historia real de la peligrosa expedición al monte Everest en 1996, donde los alpinistas enfrentan una feroz tormenta.','121 minutos', NULL, 'https://www.youtube.com/embed/3c2ZlhT-EFk'),
(98, 2, 'La Familia Addams', 'El delirante y gótico estilo de vida de la peculiar familia Addams es retratado a medida que enfrentan problemas que llevan a la locura y la diversión, explorando lo extraño y macabro de la vida familiar.', '101 minutos', NULL, 'https://www.youtube.com/embed/G388UMkJIBE');


INSERT INTO actores (ID, nombre, apellido) VALUES
(1, 'Pedro', 'Pascal'),
(2, 'Carl', 'Weathers'),
(3, 'Misty', 'Rosas'),
(4, 'Chris', 'Bartlett'),
(5, 'Rio', 'Hackford'),
(6, 'Giancarlo', 'Esposito'),
(7, 'Tom', 'Hopper'),
(8, 'David', 'Castañeda'),
(9, 'Emmy', 'Raver-Lampman'),
(10, 'Robert', 'Sheehan'),
(11, 'Aidan', 'Gallagher'),
(12, 'Elliot', 'Page'),
(13, 'Anya', 'Taylor-Joy'),
(14, 'Thomas', 'Brodie-Sangster'),
(15, 'Harry', 'Melling'),
(16, 'Moses', 'Ingram'),
(17, 'Chloe', 'Pirrie'),
(18, 'Janina', 'Elkin'),
(19, 'Lili', 'Reinhart'),
(20, 'Casey', 'Cott'),
(21, 'Camila', 'Mendes'),
(22, 'Marisol', 'Nichols'),
(23, 'Madelaine', 'Petsch'),
(24, 'Mädchen', 'Amick'),
(25, 'Claire', 'Fox'),
(26, 'Olivia', 'Colman'),
(27, 'Matt', 'Smith'),
(28, 'Tobias', 'Menzies'),
(29, 'Vanessa', 'Kirby'),
(30, 'Helena', 'Bonham Carter'),
(31, 'Millie', 'Bobby Brown'),
(32, 'Henry', 'Cavill'),
(33, 'Sam', 'Claflin'),
(34, 'Louis', 'Partridge'),
(35, 'Adeel', 'Akhtar'),
(36, 'Joaquin', 'Phoenix'),
(37, 'Robert', 'De Niro'),
(38, 'Zazie', 'Beetz'),
(39, 'Frances', 'Conroy'),
(40, 'Brett', 'Cullen'),
(41, 'Shea', 'Whigham'),
(42, 'Robert', 'Downey Jr.'),
(43, 'Chris', 'Evans'),
(44, 'Mark', 'Ruffalo'),
(45, 'Chris', 'Hemsworth'),
(46, 'Scarlett', 'Johansson'),
(47, 'Jeremy', 'Renner'),
(48, 'Emilia', 'Clarke'),
(49, 'Lena', 'Headey'),
(50, 'Sophie', 'Turner'),
(51, 'Peter', 'Dinklage'),
(52, 'Nikolaj', 'Coster-Waldau'),
(53, 'Grant', 'Gustin'),
(54, 'Carlos', 'Valdes'),
(55, 'Danielle', 'Panabaker'),
(56, 'Candice', 'Patton'),
(57, 'Jesse', 'L. Martin'),
(58, 'Tom', 'Cavanagh'),
(59, 'Jim', 'Parsons'),
(60, 'Johnny', 'Galecki'),
(61, 'Kaley', 'Cuoco'),
(62, 'Simon', 'Helberg'),
(63, 'Kunal', 'Nayyar'),
(64, 'Melissa', 'Rauch'),
(65, 'Mayim', 'Bialik'),
(66, 'Jennifer', 'Aniston'),
(67, 'Courteney', 'Cox'),
(68, 'Lisa', 'Kudrow'),
(69, 'David', 'Schwimmer'),
(70, 'Matthew', 'Perry'),
(71, 'Matt', 'LeBlanc'),
(72, 'Amybeth', 'McNulty'),
(73, 'Geraldine', 'James'),
(74, 'R. H.', 'Thomson'),
(75, 'Corrine', 'Koslo'),
(76, 'Dalila', 'Bela'),
(77, 'Lucas', 'Jade Zumann'),
(78, 'Gillian', 'Anderson'),
(79, 'David', 'Duchovny'),
(80, 'Mitch', 'Pileggi'),
(81, 'Robert', 'Patrick'),
(82, 'Tom', 'Braidwood'),
(83, 'Bruce', 'Harwood'),
(84, 'Jared', 'Harris'),
(85, 'Stellan', 'Skarsgård'),
(86, 'Emily', 'Watson'),
(87, 'Paul', 'Ritter'),
(88, 'Jessie', 'Buckley'),
(89, 'Adam', 'Nagaitis'),
(90, 'Evan', 'Rachel Wood'),
(91, 'Thandiwe', 'Newton'),
(92, 'Jeffrey', 'Wright'),
(93, 'Tessa', 'Thompson'),
(94, 'Ed', 'Harris'),
(95, 'Luke', 'Hemsworth'),
(96, 'Rodrigo', 'Santoro'),
(97, 'Simon', 'Quarterman'),
(98, 'Clifton', 'Collins Jr.'),
(99, 'Lee', 'Pace'),
(100, 'Scoot', 'McNairy'),
(101, 'Mackenzie', 'Davis'),
(102, 'Kerry', 'Bishé'),
(103, 'Toby', 'Huss'),
(104, 'Alana', 'Cavanaugh'),
(105, 'Jessica', 'Chastain'),
(106, 'John', 'Malkovich'),
(107, 'Colin', 'Farrell'),
(108, 'Common', ''),
(109, 'Geena', 'Davis'),
(110, 'Ioan', 'Gruffudd'),
(111, 'Margot', 'Robbie'),
(112, 'Ewan', 'McGregor'),
(113, 'Mary', 'Elizabeth Winstead'),
(114, 'Jurnee', 'Smollett'),
(115, 'Rosie', 'Perez'),
(116, 'Chris', 'Messina'),
(117, 'Stacy', 'Martin'),
(118, 'Rhona', 'Mitra'),
(119, 'Theo', 'James'),
(120, 'Peter', 'Ferdinando'),
(121, 'Lia', 'Williams'),
(122, 'Toby', 'Jones'),
(123, 'Miranda', 'Cosgrove'),
(124, 'Kate', 'Walsh'),
(125, 'Omar', 'Epps'),
(126, 'Angus', 'Macfadyen'),
(127, 'Jorja', 'Fox'),
(128, 'Enver', 'Gjokaj'),
(129, 'Bill', 'Skarsgård'),
(130, 'Jessica', 'Chastain'),
(131, 'Bill', 'Hader'),
(132, 'James', 'McAvoy'),
(133, 'Isaiah', 'Mustafa'),
(134, 'Jay', 'Ryan'),
(135, 'Chadwick', 'Boseman'),
(136, 'Michael', 'B. Jordan'),
(137, 'Lupita', 'Nyong\o'),
(138, 'Danai', 'Gurira'),
(139, 'Martin', 'Freeman'),
(140, 'Daniel', 'Kaluuya'),
(141, 'Christian', 'Bale'),
(142, 'Matt', 'Damon'),
(143, 'Caitriona', 'Balfe'),
(144, 'Josh', 'Lucas'),
(145, 'Noah', 'Jupe'),
(146, 'Jon', 'Bernthal'),
(147, 'Génesis', 'Rodríguez'),
(148, 'Vincent', 'Piazza'),
(149, 'Benjamin', 'Sokolow'),
(150, 'Emily', 'Bayiokos'),
(151, 'Amy', 'Manson'),
(152, 'Luke', 'Allen-Gale'),
(153, 'Nina', 'Bergman'),
(154, 'Dominic', 'Mafham'),
(155, 'James', 'Weber Brown'),
(156, 'Lorina', 'Kamburova'),
(157, 'Marion', 'Cotillard'),
(159, 'Laurence', 'Fishburne'),
(160, 'Jude', 'Law'),
(161, 'Kate', 'Winslet'),
(162, 'Jennifer', 'Ehle'),
(163, 'Gwyneth', 'Paltrow'),
(164, 'Florence', 'Pugh'),
(165, 'David', 'Harbour'),
(166, 'O.T.', 'Fagbenle'),
(167, 'Rachel', 'Weisz'),
(168, 'William', 'Hurt'),
(169, 'Ray', 'Winstone'),
(170, 'Jessica', 'Chastain'),
(171, 'Kristen', 'Wiig'),
(172, 'Jeff', 'Daniels'),
(173, 'Michael', 'Peña'),
(174, 'Sean', 'Bean'),
(175, 'Kate', 'Mara'),
(176, 'Alicia', 'Vikander'),
(177, 'Domhnall', 'Gleeson'),
(178, 'Oscar', 'Isaac'),
(179, 'Sonoya', 'Mizuno'),
(180, 'Corey', 'Johnson'),
(181, 'Claire', 'Selby'),
(182, 'Gana', 'Bayarsaikhan'),
(183, 'Bryce', 'Dallas Howard'),
(184, 'Chris', 'Pratt'),
(185, 'Irrfan', 'Khan'),
(186, 'Vincent', 'D\Onofrio'),
(187, 'Omar', 'Sy'),
(188, 'Nick', 'Robinson'),
(189, 'Judy', 'Greer'),
(190, 'Will', 'Smith'),
(191, 'Alice', 'Braga'),
(192, 'Charlie', 'Tahan'),
(193, 'Dash', 'Mihok'),
(194, 'Salli', 'Richardson-Whitfield'),
(195, 'Willow', 'Smith'),
(196, 'Emma', 'Thompson'),
(197, 'Ryan', 'Gosling'),
(198, 'Jason', 'Clarke'),
(199, 'Kyle', 'Chandler'),
(200, 'Corey', 'Stoll'),
(201, 'Patrick', 'Fugit'),
(202, 'John', 'Boyega'),
(203, 'Scott', 'Eastwood'),
(204, 'Cailee', 'Spaeny'),
(205, 'Jing', 'Tian'),
(206, 'Rinko', 'Kikuchi'),
(207, 'Burn', 'Gorman'),
(208, 'Ashton', 'Kutcher'),
(209, 'Dermot', 'Mulroney'),
(210, 'Josh', 'Gad'),
(211, 'Lukas', 'Haas'),
(212, 'Matthew', 'Modine'),
(213, 'J.K.', 'Simmons'),
(214, 'Lesley', 'Ann Warren'),
(215, 'Noah', 'Wyle'),
(216, 'Anthony', 'Michael Hall'),
(217, 'Joey', 'Slotnick'),
(218, 'J.G.', 'Hertzler'),
(219, 'Wayne', 'Pére'),
(220, 'Sheila', 'Shaw'),
(221, 'Gemma', 'Zamprogna'),
(222, 'Raúl', 'Juliá'),
(223, 'Anjelica', 'Huston'),
(224, 'Christopher', 'Lloyd'),
(225, 'Christina', 'Ricci'),
(226, 'Carel', 'Struycken'),
(227, 'Dan', 'Hedaya'),
(228, 'Jimmy', 'Workman'),
(229, 'Elizabeth', 'Wilson'),
(230, 'Dana', 'Ivey'),
(231, 'Kit', 'Harington'),
(232, 'Anthony', 'Hopkins'),
(233, 'Ingrid', 'Bolsø Berdal'),
(234, 'Angela', 'Sarafyan'),
(235, 'Shannon', 'Woodward'),
(236, 'Talulah', 'Riley'),
(237, 'Louis', 'Herthum'),
(238, 'Ben', 'Barnes'),
(239, 'Leonardo', 'Nam'),
(240, 'Aaron', 'Paul'),
(241, 'Vincent', 'Cassel'),
(242, 'Izabella', 'Alvarez'),
(243, 'Jeff Daniel', 'Phillips'),
(244, 'Jimmi', 'Simpson'),
(245, 'Dwayne', 'Johnson'),
(246, 'Kevin', 'Hart'),
(247, 'Jack', 'Black'),
(248, 'Karen', 'Gillan'),
(249, '', 'Awkwafina'),
(250, 'Nick', 'Jonas'),
(251, 'Rhys', 'Darby'),
(252, 'Bobby', 'Cannavale'),
(253, 'Alex', 'Wolff'),
(254, 'Ser Darius', 'Blain'),
(255, 'Madison', 'Iseman'),
(256, 'Morgan', 'Turner'),
(257, 'Sean', 'Buxton'),
(258, 'Mason', 'Guccione'),
(259, 'Marin', 'Hinkle'),
(260, 'Colin', 'Hanks'),
(261, 'Danny', 'DeVito'),
(158, 'Danny', 'Glover'),
(262, 'Claire', 'Foy'),
(263, 'John', 'DiMaggio'),
(264, 'Jesse', 'Eisenberg'),
(265, 'Andrew', 'Garfield'),
(266, 'Justin', 'Timberlake'),
(267, 'Armie', 'Hammer'),
(268, 'Max', 'Minghella'),
(269, 'Rooney', 'Mara'),
(270, 'Brenda', 'Song'),
(271, 'Rashida', 'Jones'),
(272, 'John', 'Gertz'),
(273, 'Ryan', 'Phillippe'),
(274, 'Rachael', 'Leigh Cook'),
(275, 'Tim', 'Robbins'),
(276, 'Claire', 'Forlani'),
(277, 'Richard', 'Rountree'),
(278, 'Tygh', 'Runyan'),
(279, 'Ned', 'Bellamy'),
(280, 'Tyler', 'Labine'),
(281, 'Anna', 'Kendrick'),
(282, 'Daniel', 'Dae Kim'),
(283, 'Shamier', 'Anderson'),
(284, 'Toni', 'Collette'),
(285, 'Ben', 'Affleck'),
(286, 'Gal', 'Gadot'),
(287, 'Jason', 'Momoa'),
(288, 'Ezra', 'Miller'),
(289, 'Ray', 'Fisher'),
(290, 'Amy', 'Adams'),
(291, 'Jeremy', 'Irons'),
(292, 'Connie', 'Nielsen'),
(293, 'Charlie', 'Sheen'),
(294, 'Jon', 'Cryer'),
(295, 'Angus', 'T. Jones'),
(296, 'Conchata', 'Ferrel'),
(297, 'Holland', 'Taylor'),
(298, 'Jennifer', 'Bini Taylor'),
(299, 'Melanie', 'Lynskey'),
(300, 'Amber', 'Tamblyn'),
(301, 'Úrsula', 'Corberó'),
(302, 'Álvaro', 'Morte'),
(303, 'Itziar', 'Ituño'),
(304, 'Pedro', 'Alonso'),
(305, 'Alba', 'Flores'),
(306, 'Miguel', 'Herrán'),
(307, 'Jaime', 'Lorente'),
(308, 'Esther', 'Acebo'),
(309, 'Enrique', 'Arce'),
(310, 'Winona', 'Ryder'),
(311, 'Finn', 'Wolfhard'),
(312, 'Gaten', 'Matarazzo'),
(313, 'Caleb', 'McLaughlin'),
(314, 'Natalia', 'Dyer'),
(315, 'Heaton', ''),
(316, 'Charlie', ''),
(317, 'Joe', 'Keery'),
(318, 'Sandra', 'Bullock'),
(319, 'George', 'Clooney'),
(320, 'Orto', 'Ignatiussen'),
(321, 'Phaldut', 'Sharma'),
(322, 'Amy', 'Warren'),
(323, 'Basher', 'Savage'),
(324, 'Adam', 'Cozens'),
(325, 'Tom', 'Hanks'),
(326, 'Bill', 'Paxton'),
(327, 'Kevin', 'Bacon'),
(328, 'Gary', 'Sinise'),
(329, 'Kathleen', 'Quinlan'),
(330, 'Roger', 'Corman'),
(331, 'Chris', 'Ellis'),
(332, 'Xander', 'Berkeley'),
(333, 'Liev', 'Schreiber'),
(334, 'Julia', 'Stiles'),
(335, 'Seamus', 'Davey-Fitzpatrick'),
(336, 'David', 'Thewils'),
(337, 'Pete', 'Postlethwaite'),
(338, 'Mia', 'Farrow'),
(339, 'Predrag', 'Bjelac'),
(340, 'Carlo', 'Sabatini'),
(341, 'Amy', 'Huck'),
(342, 'Ellen', 'Burstyn'),
(343, 'Linda', 'Blair'),
(344, 'Max', 'vox Sydow'),
(345, 'Lee', 'J. Cobb'),
(346, 'Kitty', 'Winn'),
(347, 'Jack', 'MacGowran'),
(348, 'Jason', 'Miller'),
(349, 'William', 'O Malley'),
(350, 'Barton', 'Heyman'),
(351, 'Jaeden', 'Martell'),
(352, 'Jeremy', 'Ray'),
(353, 'Sophia', 'Lillis'),
(354, 'Chosen', 'Jacobs'),
(355, 'Jack', 'Dylan'),
(356, 'Wyatt', 'Oleff'),
(357, 'Nicholas', 'Hamilton'),
(358, 'Rainn', 'Wilson'),
(359, 'Steve', 'Carell'),
(360, 'Jenna', 'Fischer'),
(361, 'John', 'Krasinski'),
(362, 'B.J.', 'Novak'),
(363, 'Kate', 'Flannery'),
(364, 'Brian', 'Baumgartner'),
(365, 'Leslie', 'David Baker'),
(366, 'Mindy', 'Kaling'),
(367, 'Angela', 'Kinsey'),
(368, 'Freddie', 'Highmore'),
(369, 'Antonia', 'Thomas'),
(370, 'Hill', 'Harper'),
(371, 'Richard', 'Schiff'),
(372, 'Christina', 'Chang'),
(373, 'Paige', 'Spara'),
(374, 'Fiona', 'Gubelmann'),
(375, 'Will', 'Yun Lee'),
(376, 'Nicholas', 'Gonzalez'),
(377, 'Eddie', 'Redmayne'),
(378, 'Felicity', 'Jones'),
(379, 'Charlie', 'Cox'),
(380, 'Simon', 'McBurney'),
(381, 'David', 'Thewlis'),
(382, 'Maxine', 'Peake'),
(383, 'Harry', 'Lloyd'),
(384, 'Tom', 'Prior'),
(385, 'Benedict', 'Cumberbatch'),
(386, 'Keira', 'Knightley'),
(387, 'Matthew', 'Goode'),
(388, 'Rory', 'Kinnear'),
(389, 'Allen', 'Leech'),
(390, 'Matthew', 'Beard'),
(391, 'Charles', 'Dance'),
(392, 'Mark', 'Strong'),
(393, 'James', 'Northcote'),
(394, 'Taraji P.', 'Henson'),
(395, 'Octavia', 'Spencer'),
(396, 'Janelle', 'Monáe'),
(397, 'Kevin', 'Costner'),
(398, 'Kirsten', 'Dunst'),
(399, 'Mahershala', 'Ali'),
(400, 'Glen', 'Powell'),
(401, 'Ariana', 'Neal'),
(402, 'Russell', 'Crowe'),
(403, 'Jennifer', 'Connelly'),
(404, 'Paul', 'Bettany'),
(405, 'Christopher', 'Plummer'),
(406, 'Adam', 'Goldberg'),
(407, 'Anthony', 'Rapp'),
(408, 'Judd', 'Hirsch'),
(409, 'Jennifer', 'Lawrence'),
(410, 'Michael', 'Sheen'),
(411, 'Andy', 'García'),
(412, 'Aurora', 'Perrineau'),
(413, 'Kristin', 'Brock'),
(414, 'Julee', 'Cerda'),
(415, 'Fred', 'Melamed'),
(416, 'Anne', 'Hathaway'),
(417, 'Patrick', 'Wilson'),
(418, 'Andre', 'Braugher'),
(419, 'Dianne', 'Wiest'),
(420, 'David', 'Morse'),
(421, 'William B.', 'Davis'),
(422, 'Ryan', 'Robbins'),
(423, 'Clea', 'DuVall'),
(424, 'Don', 'Thompson'),
(425, 'Bryan', 'Cranston'),
(426, 'Alan', 'Arkin'),
(427, 'John', 'Goodman'),
(428, 'Victor', 'Garber'),
(429, 'Tate', 'Donovan'),
(430, 'Rory', 'Cochrane'),
(431, 'Noomi', 'Rapace'),
(432, 'Michael', 'Fassbender'),
(433, 'Charlize', 'Theron'),
(434, 'Logan', 'Marshall-Green'),
(435, 'Guy', 'Pearce'),
(436, 'Idris', 'Elba'),
(437, 'Sean', 'Harris'),
(438, 'Rafe', 'Spall'),
(439, 'Kate', 'Dickie'),
(440, 'Emut', 'Elliott'),
(441, 'Benedict', 'Wong'),
(442, 'Lucy', 'Hutchinson'),
(443, 'Ian', 'Whyte'),
(444, 'Branwell', 'Donaghey'),
(445, 'Vladimir', 'Furdik'),
(446, 'C.C.', 'Smiff'),
(447, 'Shane', 'Steyn'),
(448, 'John', 'Lebar'),
(449, 'Katherine', 'Waterston'),
(450, 'Billy', 'Crudup'),
(451, 'Danny', 'McBride'),
(452, 'Demián', 'Bichir'),
(453, 'Carmen', 'Ejogo'),
(454, 'Jussie', 'Smollett'),
(455, 'Callie', 'Hernandez'),
(456, 'Amy', 'Seimetz'),
(457, 'Nathaniel', 'Dean'),
(458, 'Alexander', 'England'),
(459, 'Benjamin', 'Rigby'),
(460, 'Uli', 'Latukefu'),
(461, 'Tess', 'Haubrich'),
(462, 'Andrew', 'Crawford'),
(463, 'Guy', 'Pierce'),
(464, 'James', 'Franco'),
(465, 'Javier', 'Botet'),
(466, 'Jake', 'Gyllenhaal'),
(467, 'Rebecca', 'Ferguson'),
(468, 'Ryan', 'Reynolds'),
(469, 'Hiroyuki', 'Sanada'),
(470, 'Airyon', 'Bakare'),
(471, 'Olga', 'Dihovichnaya'),
(472, 'Naoko', 'Mori'),
(473, 'Haruka', 'Kuroda'),
(474, 'Camiel', 'Warren-Taylor'),
(475, 'Rosamund', 'Pike'),
(476, 'Sam', 'Riley'),
(477, 'Aneurin', 'Barnard'),
(478, 'Simon', 'Russell Beale'),
(479, 'Jonathan', 'Aris'),
(480, 'Tim', 'Woodward'),
(481, 'Katherine', 'Parkinson'),
(482, 'Chris', 'O Dowd'),
(483, 'Richard', 'Ayoade'),
(484, 'Matt', 'Berry'),
(485, 'Noel', 'Fielding'),
(486, 'Peter', 'Serafinowicz'),
(487, 'Graham', 'Linehan'),
(488, 'Tom', 'Binns'),
(489, 'Lewis', 'Macleod'),
(490, 'Gemma', 'Chan'),
(491, 'Emily', 'Berrington'),
(492, 'Lucy', 'Carless'),
(493, 'Colin', 'Morgan'),
(494, 'Theo', 'Stevenson'),
(495, 'Pixie', 'Daves'),
(496, 'Tom', 'Goodman-Hill'),
(497, 'Ivanno', 'Jeremiah'),
(498, 'Ruth', 'Bradley'),
(499, 'Will', 'Tudor'),
(500, 'Neil', 'Maskell'),
(501, 'Billy', 'Jenkins'),
(502, 'Bella', 'Dayne'),
(503, 'Thusitha', 'Jayasumdera'),
(504, 'Danny', 'Webb'),
(505, 'Carrie-Anne', 'Moss'),
(506, 'Dominic', 'Cooper'),
(507, 'Imogen', 'Poots'),
(508, 'Ramón', 'Rodríguez'),
(509, 'Michael', 'Keaton'),
(510, 'Rami', 'Malek'),
(511, 'Kid', 'Cudi'),
(512, 'Dakota', 'Johnson'),
(513, 'Harrison', 'Gilbertson'),
(514, 'Carmela', 'Zumbado'),
(515, 'Jalil', 'Jay Lynch'),
(516, 'Nick', 'Chinlund'),
(517, 'Chad', 'Randall'),
(518, 'Julianne', 'Nicholson'),
(519, 'Jean', 'Smart'),
(520, 'Angourie', 'Rice'),
(521, 'Evan', 'Peters'),
(522, 'Sosie', 'Bacon'),
(523, 'David', 'Denman'),
(524, 'Neal', 'Huff'),
(525, 'James', 'McArdle'),
(526, 'John', 'Douglas Thompson'),
(527, 'Joe', 'Tippett'),
(528, 'Cameron', 'Mann'),
(529, 'Chinasa', 'Ogbuagu'),
(530, 'Jamie', 'Foxx'),
(531, 'Kerry', 'Washington'),
(532, 'Regina', 'King'),
(533, 'Harry', 'Lennix'),
(534, 'Clifton', 'Powell'),
(535, 'Bokeem', 'Woodbine'),
(536, 'Sharon', 'Warren'),
(537, 'C.J.', 'Sanders'),
(538, 'Curtis', 'Armstrong'),
(539, 'Michaela', 'Coel'),
(540, 'Daniel', 'Lapaine'),
(541, 'Hannah', 'John-Kamen'),
(542, 'Andrew', 'Roux'),
(543, 'Claire', 'Keelan'),
(544, 'Sinéad', 'Matthews'),
(545, 'Anna', 'Wilson-Jones'),
(546, 'Paul', 'Popplewell'),
(547, 'Julia', 'Davis'),
(548, 'Ashley', 'Thomas'),
(549, 'Kerrie', 'Hayes'),
(550, 'Amy Beth', 'Hayes'),
(551, 'Rebekah', 'Staton'),
(552, 'Rhashan', 'Stone'),
(553, 'Phoebe', 'Fox'),
(554, 'Jimi', 'Mistry'),
(555, 'Cherry', 'Jones'),
(556, 'Alice', 'Eve'),
(557, 'Susannah', 'Fielding'),
(558, 'Demetri', 'Goritsas'),
(559, 'Kadiff', 'Kirwan'),
(560, 'Sope', 'Dirisu'),
(561, 'Jackson', 'Bews'),
(562, 'Annabel', 'Davis'),
(563, 'Billy', 'Griffin Jr.'),
(564, 'Paul', 'Lawrence Kitson'),
(565, 'Jeff', 'Mash'),
(566, 'Patrick', 'Kennedy'),
(567, 'Lydia', 'Wilson'),
(568, 'Alastair', 'Mackenzie'),
(569, 'Chetna', 'Pandya'),
(570, 'Tuppence', 'Middleton'),
(571, 'Ian', 'Bonar'),
(572, 'Elisabeth', 'Hopper'),
(573, 'Nick', 'Bartlett'),
(574, 'Wunmi', 'Mosaku'),
(575, 'Alex', 'Lawther'),
(576, 'Jerome', 'Flynn'),
(577, 'Susannah', 'Doyle'),
(578, 'Madeline', 'Brewer'),
(579, 'Sarah', 'Snook'),
(580, 'Michael', 'Kelly'),
(581, 'Jola', 'Bokinni'),
(582, 'Faye', 'Marsay'),
(583, 'Benefict', 'Wong'),
(584, 'Jonas', 'Karlsson'),
(585, 'Eugene', 'O Hare'),
(586, 'Indira', 'Ainger'),
(587, 'James', 'Lance'),
(588, 'David', 'Ajala'),
(589, 'Sarah', 'Abbott'),
(590, 'Jake', 'Davies'),
(591, 'Clint', 'Dyer'),
(592, 'Letitia', 'Wright'),
(593, 'Babs', 'Olusanmokun'),
(594, 'Georgina', 'Campbell'),
(595, 'Jesse', 'Plemons'),
(596, 'Aldis', 'Hodge'),
(597, 'Kiran Sonia', 'Sawar'),
(598, 'Miley', 'Cyrus'),
(599, 'Anthony', 'Mackie'),
(600, 'Nicole', 'Beharie'),
(601, 'Gugu', 'Mbatha-Raw'),
(602, 'Simona', 'Brown'),
(603, 'Eve', 'Hewson'),
(604, 'Toma', 'Bateman'),
(605, 'Robert', 'Aramayo'),
(606, 'Tyler', 'Howitt'),
(607, 'Georgie', 'Glen'),
(608, 'Kamontip', 'Krissy Ashton'),
(609, 'Rob', 'Horrocks'),
(610, 'Joakim', 'Skarli'),
(611, 'Olivia', 'Wilde'),
(612, 'Matt', 'Letscher'),
(613, 'Portia', 'Doubleday'),
(614, 'Spike', 'Jonze'),
(615, 'Tom', 'Cruise'),
(616, 'Jon', 'Voight'),
(617, 'Emmanuelle', 'Béart'),
(618, 'Henry', 'Czerny'),
(619, 'Jean', 'Reno'),
(620, 'Ving', 'Rhames'),
(621, 'Kristin', 'Scott Thomas'),
(622, 'Vanessa', 'Redgrave'),
(623, 'Ingeborga', 'Dapkünaitè'),
(624, 'Elizabeth', 'Debicki'),
(625, 'Luca', 'Calvani'),
(626, 'Sylvester', 'Groth'),
(627, 'Hugh', 'Grant'),
(628, 'Christian', 'Berkel'),
(629, 'Misha', 'Kuznetsov'),
(630, 'Guy', 'Williams'),
(631, 'Marianna', 'Di Martino'),
(632, 'Chris', 'Pine'),
(633, 'Robin', 'Wright'),
(634, 'Lilly', 'Aspell'),
(635, 'Amr', 'Waked'),
(636, 'Kristoffer', 'Polaha'),
(637, 'Jeffrey', 'Tambor'),
(638, 'Cynthia', 'Addai-Robinson'),
(639, 'John', 'Lithgow'),
(640, 'Andy', 'Umberger'),
(641, 'Alison', 'Wright'),
(642, 'Daeg', 'Faerch'),
(643, 'Seth', 'Lee'),
(644, 'Tait', 'Fletcher'),
(645, 'Angel', 'Giuffria'),
(646, 'Ron', 'Yuan'),
(647, 'Scott', 'Hunter'),
(648, 'Dennis', 'Keiffer'),
(649, 'Jake', 'Presley'),
(650, 'Hugh', 'Jackman'),
(651, 'Allison', 'Janney'),
(652, 'Geraldine', 'Viswanathan'),
(653, 'Rafael', 'Casal'),
(654, 'Stephen', 'Spinella'),
(655, 'Annaleigh', 'Ashford'),
(656, 'Ray', 'Romano'),
(657, 'Hari', 'Dhillon'),
(658, 'Jerremy', 'Shamos'),
(659, 'Stephanie', 'Kurtzuba'),
(660, 'Catherine', 'Curtin'),
(661, 'Kathrine', 'Narducci'),
(662, 'Ray', 'Abruzzo'),
(663, 'Ben', 'Stiller'),
(664, 'Robin', 'Williams'),
(665, 'Carla', 'Gugino'),
(666, 'Dick', 'Van Dyke'),
(667, 'Steve', 'Coogan'),
(668, 'Jake', 'Cherry'),
(669, 'Mickey', 'Rooney'),
(670, 'Bill', 'Cobbs'),
(671, 'Owen', 'Wilson'),
(672, 'Ricky', 'Gervais'),
(673, 'Kim', 'Raver'),
(674, 'Mizuo', 'Peck'),
(675, 'Gwilym', 'Lee'),
(676, 'Ben', 'Hardy'),
(677, 'Joseph', 'Mazzello'),
(678, 'Lucy', 'Boynton'),
(679, 'Aidan', 'Gillen'),
(680, 'Tom', 'Hollander'),
(681, 'Mike', 'Myers'),
(682, 'Julianne', 'Hough'),
(683, 'Diego', 'Boneta'),
(684, 'Alec', 'Baldwin'),
(685, 'Russell', 'Brand'),
(686, 'Malin', 'Åkerman'),
(687, 'Paul', 'Giamatti'),
(688, 'Catherine', 'Zeta-Jones'),
(689, 'Mary J.', 'Blige'),
(690, 'Erica', 'Frene'),
(691, 'Shane', 'Hartline'),
(692, 'James', 'Martin Kelly'),
(693, 'Will', 'Forte'),
(694, 'Eli', 'Roth'),
(695, 'Joel', 'Courtney'),
(696, 'Elle', 'Fanning'),
(697, 'Riley', 'Griffiths'),
(698, 'Noah', 'Emmerich'),
(699, 'AJ', 'Michalka'),
(700, 'Ryan', 'Lee'),
(701, 'Ron', 'Eldard'),
(702, 'Gabriel', 'Basso'),
(703, 'Justice', 'Smith'),
(704, 'Daniella', 'Pineda'),
(705, 'James', 'Cromwell'),
(706, 'Ted', 'Levine'),
(707, 'Jeff', 'Goldblum'),
(708, 'BD', 'Wong'),
(709, 'Geraldine', 'Chaplin'),
(710, 'Isabella', 'Sermon'),
(711, 'Kevin', 'Layne'),
(712, 'Harrison', 'Ford'),
(713, 'Shia', 'LaBeouf'),
(714, 'Cate', 'Blanchett'),
(715, 'Karen', 'Allen'),
(716, 'John', 'Hurt'),
(717, 'Jim', 'Broadbent'),
(718, 'Igor', 'Jijikine'),
(719, 'Dimitri', 'Diatchenko'),
(720, 'Sean', 'Astin'),
(721, 'Josh', 'Brolin'),
(722, 'Jeff', 'Cohen'),
(723, 'Corey', 'Feldman'),
(724, 'Kerri', 'Green'),
(725, 'Martha', 'Plimpton'),
(726, 'Jonathan', 'Ke Quan'),
(727, 'John', 'Matuszak'),
(728, 'Robert', 'Davi'),
(729, 'Bonnie', 'Hunt'),
(730, 'Paul', 'Newman'),
(731, 'Larry', 'the Cable Guy'),
(732, 'Tony', 'Shalhoub'),
(733, 'Cheech', 'Marin'),
(734, 'Michael', 'Wallis'),
(735, 'George', 'Carlin'),
(736, 'Paul', 'Dooley'),
(737, 'Chris', 'Miller'),
(738, 'Tom', 'McGrath'),
(739, 'Danny', 'Jacobs'),
(740, 'Andy', 'Richter'),
(741, 'Nicole', 'Sullivan'),
(742, 'Christopher', 'Knights'),
(743, 'Wayne', 'Knight'),
(744, 'Dale', 'Midkiff'),
(745, 'Fred', 'Gwynne'),
(746, 'Denise', 'Crosby'),
(747, 'Brad', 'Greenquist'),
(748, 'Michael', 'Lombard'),
(749, 'Miko', 'Hughes'),
(750, 'Blaze', 'Berdahl'),
(751, 'Susan', 'Blommaert'),
(752, 'Mara', 'Clark'),
(753, 'Craig T.', 'Nelson'),
(754, 'JoBeth', 'Williams'),
(755, 'Beatrice', 'Straight'),
(756, 'Dominique', 'Dunne'),
(757, 'Oliver', 'Robins'),
(758, 'Heather', 'O Rourke'),
(759, 'Michael', 'McManus'),
(760, 'Virginia', 'Kiser'),
(761, 'Martin', 'Casella'),
(762, 'Audrey', 'Tautou'),
(763, 'Ian', 'McKellen'),
(764, 'Alfred', 'Molina'),
(765, 'Jürgen', 'Prochnow'),
(766, 'Jean-Yves', 'Berteloot'),
(767, 'Etienne', 'Chicot'),
(768, 'Rowan', 'Atkinson'),
(769, 'Natalie', 'Imbruglia'),
(770, 'Ben', 'Miller'),
(771, 'Greg', 'Wise'),
(772, 'Tasha', 'de Vasconcelos'),
(773, 'Douglas', 'McFerran'),
(774, 'Steve', 'Nicolson'),
(775, 'Terence', 'Harvey'),
(776, 'Frances', 'McDormand'),
(777, 'Kate', 'Hudson'),
(778, 'Jason', 'Lee'),
(779, 'Zoey', 'Deschanel'),
(780, 'Michael', 'Angarano'),
(781, 'Anna', 'Paquin'),
(782, 'Fairuza', 'Balk'),
(783, 'Joan', 'Cusack'),
(784, 'Mike', 'White'),
(785, 'Sarah', 'Silverman'),
(786, 'Lee', 'Wilkof'),
(787, 'Kate', 'McGregor-Stewart'),
(788, 'Adam', 'Pascal'),
(789, 'Suzzane', 'Douglas'),
(790, 'Macaulay', 'Culkin'),
(791, 'Joe', 'Pesci'),
(792, 'Daniel', 'Stern'),
(793, 'John', 'Heard'),
(794, 'Catherine', 'O Hara'),
(795, 'Roberts', 'Blossom'),
(796, 'Devin', 'Ratray'),
(797, 'Michael C.', 'Maronna'),
(798, 'Hillary', 'Wolf'),
(799, 'Vince', 'Vaughn'),
(800, 'Will', 'Ferrell'),
(801, 'Rose', 'Byrne'),
(802, 'Aasif', 'Mandvi'),
(803, 'Josh', 'Brener'),
(804, 'Dylan', 'O Brien'),
(805, 'Tiya', 'Sircar'),
(806, 'Tobit', 'Raphael'),
(807, 'Jessica', 'Szohr'),
(808, 'Rob', 'Riggle'),
(809, 'Eric', 'André'),
(810, 'Harvey', 'Guillén'),
(811, 'Gary Anthony', 'Williams'),
(812, 'Bruno', 'Amato'),
(813, 'Karen', 'Ceesay'),
(814, 'Rebecca', 'Hazlewood'),
(815, 'Sacha', 'Dhawan'),
(816, 'Diedrich', 'Bader'),
(817, 'Pippa', 'Black'),
(818, 'Parvesh', 'Ceena'),
(819, 'Thushari', 'Jayasekera'),
(820, 'Ben', 'Rappaport'),
(821, 'Guru', 'Singh'),
(822, 'Rizwan', 'Manji'),
(823, 'Anisha', 'Nagarajan'),
(824, 'Carla', 'Gallo'),
(825, 'Radhika', 'Chaudhari'),
(826, 'Nicholas', 'Logan'),
(827, 'Blake', 'Lively'),
(828, 'Óscar', 'Jaenada'),
(829, 'Janelle', 'Bailley'),
(830, 'Chelsea', 'Moody'),
(831, 'Angelo Josue', 'Lozano Corzo'),
(832, 'José Manuel', 'Trujillo Salas'),
(833, 'Sedona', 'Legge'),
(834, 'Pablo', 'Calva'),
(835, 'John', 'Hawkes'),
(836, 'Sam', 'Worthington'),
(837, 'Martin', 'Henderson'),
(838, 'Keira', 'Knightley'),
(839, 'Thomas M.', 'Wright'),
(840, 'Clive', 'Standen'),
(841, 'Mia', 'Goth'),
(842, 'Ariane', 'Labed');


INSERT INTO contenido_actores (ID_contenido, ID_actor) VALUES
(1, 25),   -- The Crown - Claire Foy
(1, 26),   -- The Crown - Olivia Colman
(1, 27),   -- The Crown - Matt Smith
(1, 28),   -- The Crown - Tobias Menzies
(1, 29),   -- The Crown - Vanessa Kirby
(1, 30),   -- The Crown - Helena Bonham Carter
(2, 19),   -- Riverdale - K.J. Apa
(2, 20),   -- Riverdale - Lili Reinhart
(2, 21),   -- Riverdale - Cole Sprouse
(2, 22),  -- Riverdale - Camila Mendes
(2, 23),  -- Riverdale - Madelaine Petsch
(2, 24),  -- Riverdale - Casey Cott
(3, 1),  -- The Mandalorian - Pedro Pascal
(3, 2),  -- The Mandalorian - Carl Weathers
(3, 3),  -- The Mandalorian - Misty Rosas
(3, 4),  -- The Mandalorian - Chris Bartlett
(3, 5),  -- The Mandalorian - Rio Hackford
(3, 6),  -- The Mandalorian - Giancarlo Esposito
(4, 7),  -- The Umbrella Academy
(4, 8),  -- The Umbrella Academy
(4, 9),  -- The Umbrella Academy
(4, 10),  -- The Umbrella Academy
(4, 11),  -- The Umbrella Academy
(4, 12),  -- The Umbrella Academy
(5, 13),  -- Gambito de Dama
(5, 14),  -- Gambito de Dama
(5, 15),  -- Gambito de Dama
(5, 16),  -- Gambito de Dama
(5, 17),  -- Gambito de Dama
(5, 18),  -- Gambito de Dama
(6, 31),  -- Enola Holmes
(6, 32),  -- Enola Holmes
(6, 33),  -- Enola Holmes
(6, 30),  -- Enola Holmes
(6, 34),  -- Enola Holmes
(6, 35),  -- Enola Holmes
(7, 36),  -- Guasón
(7, 37),  -- Guasón
(7, 38),  -- Guasón
(7, 39),  -- Guasón
(7, 40),  -- Guasón
(7, 41),  -- Guasón
(8, 42),  -- Avengers: End Game
(8, 43),  -- Avengers: End Game
(8, 44),  -- Avengers: End Game
(8, 45),  -- Avengers: End Game
(8, 46),  -- Avengers: End Game
(8, 47),  -- Avengers: End Game
(9, 48),  -- Juego de tronos
(9, 49),  -- Juego de tronos
(9, 50),  -- Juego de tronos
(9, 231),  -- Juego de tronos
(9, 51),  -- Juego de tronos
(9, 52),  -- Juego de tronos
(10, 53),  -- The Flash
(10, 54),  -- The Flash
(10, 55),  -- The Flash
(10, 56),  -- The Flash
(10, 57),  -- The Flash
(10, 58),  -- The Flash
(11, 59),  -- The Big Bang Theory
(11, 60),  -- The Big Bang Theory
(11, 61),  -- The Big Bang Theory
(11, 62),  -- The Big Bang Theory
(11, 63),  -- The Big Bang Theory
(11, 64),  -- The Big Bang Theory
(11, 65),  -- The Big Bang Theory
(12, 66),  -- Friends
(12, 67),  -- Friends
(12, 68),  -- Friends
(12, 69),  -- Friends
(12, 70),  -- Friends
(12, 71),  -- Friends
(13, 72),  -- Anne with an 'E'
(13, 73),  -- Anne with an 'E'
(13, 74),  -- Anne with an 'E'
(13, 75),  -- Anne with an 'E'
(13, 76),  -- Anne with an 'E'
(13, 77),  -- Anne with an 'E'
(14, 78),  -- Expedientes Secretos 'X'
(14, 79),  -- Expedientes Secretos 'X'
(14, 80),  -- Expedientes Secretos 'X'
(14, 81),  -- Expedientes Secretos 'X'
(14, 82),  -- Expedientes Secretos 'X'
(14, 83),  -- Expedientes Secretos 'X'
(15, 84),  -- Chernobyl
(15, 85),  -- Chernobyl
(15, 86),  -- Chernobyl
(15, 87),  -- Chernobyl
(15, 88),  -- Chernobyl
(15, 89),  -- Chernobyl
(16, 90),  -- Westworld
(16, 91),  -- Westworld
(16, 92),  -- Westworld
(16, 93),  -- Westworld
(16, 94),  -- Westworld
(16, 95),  -- Westworld
(16, 96),  -- Westworld
(16, 97),  -- Westworld
(16, 98),  -- Westworld
(16, 232),  -- Westworld
(16, 233),  -- Westworld
(16, 234),  -- Westworld
(16, 235),  -- Westworld
(16, 236),  -- Westworld
(16, 237),  -- Westworld
(16, 238),  -- Westworld
(16, 239),  -- Westworld
(16, 240),  -- Westworld
(16, 241),  -- Westworld
(16, 242),  -- Westworld
(16, 243),  -- Westworld
(16, 244),  -- Westworld
(17, 99),  -- Halt and Catch Fire
(17, 100),  -- Halt and Catch Fire
(17, 101),  -- Halt and Catch Fire
(17, 102),  -- Halt and Catch Fire
(17, 103),  -- Halt and Catch Fire
(17, 104),  -- Halt and Catch Fire
(18, 105),  -- Ava
(18, 106),  -- Ava
(18, 107),  -- Ava
(18, 108),  -- Ava
(18, 109),  -- Ava
(18, 110),  -- Ava
(19, 111),  -- Ave de presa
(19, 112),  -- Ave de presa
(19, 113),  -- Ave de presa
(19, 114),  -- Ave de presa
(19, 115),  -- Ave de presa
(19, 116),  -- Ave de presa
(20, 117),  -- Archivo
(20, 118),  -- Archivo
(20, 119),  -- Archivo
(20, 120),  -- Archivo
(20, 121),  -- Archivo
(20, 122),  -- Archivo
(21, 245), -- Jumanji The next level
(21, 246), -- Jumanji The next level
(21, 247), -- Jumanji The next level
(21, 248), -- Jumanji The next level
(21, 249), -- Jumanji The next level
(21, 250), -- Jumanji The next level
(21, 251), -- Jumanji The next level
(21, 252), -- Jumanji The next level
(21, 253), -- Jumanji The next level
(21, 254), -- Jumanji The next level
(21, 255), -- Jumanji The next level
(21, 256), -- Jumanji The next level
(21, 257), -- Jumanji The next level
(21, 258), -- Jumanji The next level
(21, 259), -- Jumanji The next level
(21, 260), -- Jumanji The next level
(21, 261), -- Jumanji The next level
(21, 158), -- Jumanji The next level
(22, 123), -- 3022
(22, 124), -- 3022
(22, 125), -- 3022
(22, 126), -- 3022
(22, 127), -- 3022
(22, 128), -- 3022
(23, 129), -- IT - Capítulo 2
(23, 130), -- IT - Capítulo 2
(23, 131), -- IT - Capítulo 2
(23, 132), -- IT - Capítulo 2
(23, 133), -- IT - Capítulo 2
(23, 134), -- IT - Capítulo 2
(24, 135), -- Pantera Negra
(24, 136), -- Pantera Negra
(24, 137), -- Pantera Negra
(24, 138), -- Pantera Negra
(24, 139), -- Pantera Negra
(24, 140), -- Pantera Negra
(25, 141), -- Contra lo imposible
(25, 142), -- Contra lo imposible
(25, 143), -- Contra lo imposible
(25, 144), -- Contra lo imposible
(25, 145), -- Contra lo imposible
(25, 146), -- Contra lo imposible
(26, 147), -- Centígrados
(26, 148), -- Centígrados
(26, 149), -- Centígrados
(26, 150), -- Centígrados
(27, 151), -- DOOM: Aniquilación
(27, 152), -- DOOM: Aniquilación
(27, 153), -- DOOM: Aniquilación
(27, 154), -- DOOM: Aniquilación
(27, 155), -- DOOM: Aniquilación
(27, 156), -- DOOM: Aniquilación
(28, 157), -- Contagio
(28, 142), -- Contagio
(28, 159), -- Contagio
(28, 160), -- Contagio
(28, 161), -- Contagio
(28, 162), -- Contagio
(28, 163), -- Contagio
(29, 46), -- Viuda Negra
(29, 164), -- Viuda Negra
(29, 165), -- Viuda Negra
(29, 166), -- Viuda Negra
(29, 167), -- Viuda Negra
(29, 168), -- Viuda Negra
(29, 169), -- Viuda Negra
(30, 142), -- The Martian
(30, 170), -- The Martian
(30, 171), -- The Martian
(30, 172), -- The Martian
(30, 173), -- The Martian
(30, 174), -- The Martian
(30, 175), -- The Martian
(31, 176), -- Ex-Machina
(31, 177), -- Ex-Machina
(31, 178), -- Ex-Machina
(31, 179), -- Ex-Machina
(31, 180), -- Ex-Machina
(31, 181), -- Ex-Machina
(31, 182), -- Ex-Machina
(32, 183), -- Jurassic World
(32, 184), -- Jurassic World
(32, 185), -- Jurassic World
(32, 186), -- Jurassic World
(32, 187), -- Jurassic World
(32, 188), -- Jurassic World
(32, 189), -- Jurassic World
(33, 190), -- Soy Leyenda
(33, 191), -- Soy Leyenda
(33, 192), -- Soy Leyenda
(33, 193), -- Soy Leyenda
(33, 194), -- Soy Leyenda
(33, 195), -- Soy Leyenda
(33, 196), -- Soy Leyenda
(34, 197), -- El primer hombre en la luna
(34, 262), -- El primer hombre en la luna
(34, 198), -- El primer hombre en la luna
(34, 199), -- El primer hombre en la luna
(34, 200), -- El primer hombre en la luna
(34, 201), -- El primer hombre en la luna
(35, 202), -- Titanes del pacífico
(35, 203), -- Titanes del pacífico
(35, 204), -- Titanes del pacífico
(35, 205), -- Titanes del pacífico
(35, 206), -- Titanes del pacífico
(35, 207), -- Titanes del pacífico
(36, 208), -- JOBS
(36, 209), -- JOBS
(36, 210), -- JOBS
(36, 211), -- JOBS
(36, 212), -- JOBS
(36, 213), -- JOBS
(36, 214), -- JOBS
(37, 215), -- Piratas de Silicon Valey
(37, 216), -- Piratas de Silicon Valey
(37, 217), -- Piratas de Silicon Valey
(37, 218), -- Piratas de Silicon Valey
(37, 219), -- Piratas de Silicon Valey
(37, 220), -- Piratas de Silicon Valey
(37, 221), -- Piratas de Silicon Valey
(37, 263), -- Piratas de Silicon Valey
(38, 264), -- Red Social
(38, 265), -- Red Social
(38, 266), -- Red Social
(38, 267), -- Red Social
(38, 268), -- Red Social
(38, 269), -- Red Social
(38, 270), -- Red Social
(38, 271), -- Red Social
(38, 272), -- Red Social
(39, 273), -- Antitrust
(39, 274), -- Antitrust
(39, 275), -- Antitrust
(39, 276), -- Antitrust
(39, 277), -- Antitrust
(39, 278), -- Antitrust
(39, 279), -- Antitrust
(39, 280), -- Antitrust
(40, 281), -- Stowaway
(40, 282), -- Stowaway
(40, 283), -- Stowaway
(40, 284), -- Stowaway
(41, 285), -- Liga de la Justicia - Zack Snyder
(41, 32), -- Liga de la Justicia - Zack Snyder
(41, 286), -- Liga de la Justicia - Zack Snyder
(41, 287), -- Liga de la Justicia - Zack Snyder
(41, 288), -- Liga de la Justicia - Zack Snyder
(41, 289), -- Liga de la Justicia - Zack Snyder
(41, 290), -- Liga de la Justicia - Zack Snyder
(41, 291), -- Liga de la Justicia - Zack Snyder
(41, 292), -- Liga de la Justicia - Zack Snyder
(42, 259), -- Two and a half men
(42, 208), -- Two and a half men
(42, 293), -- Two and a half men
(42, 294), -- Two and a half men
(42, 295), -- Two and a half men
(42, 296), -- Two and a half men
(42, 297), -- Two and a half men
(42, 298), -- Two and a half men
(42, 299), -- Two and a half men
(42, 300), -- Two and a half men
(43, 301), -- La casa de Papel
(43, 302), -- La casa de Papel
(43, 303), -- La casa de Papel
(43, 304), -- La casa de Papel
(43, 305), -- La casa de Papel
(43, 306), -- La casa de Papel
(43, 307), -- La casa de Papel
(43, 308), -- La casa de Papel
(43, 309), -- La casa de Papel
(44, 165), -- Stranger Things
(44, 31), -- Stranger Things
(44, 310), -- Stranger Things
(44, 311), -- Stranger Things
(44, 312), -- Stranger Things
(44, 313), -- Stranger Things
(44, 314), -- Stranger Things
(44, 315), -- Stranger Things
(44, 316), -- Stranger Things
(44, 317), -- Stranger Things
(45, 94), -- Gravity
(45, 318), -- Gravity
(45, 319), -- Gravity
(45, 320), -- Gravity
(45, 321), -- Gravity
(45, 322), -- Gravity
(45, 323), -- Gravity
(45, 324), -- Gravity
(46, 94), -- Apollo 13
(46, 325), -- Apollo 13
(46, 326), -- Apollo 13
(46, 327), -- Apollo 13
(46, 328), -- Apollo 13
(46, 329), -- Apollo 13
(46, 330), -- Apollo 13
(46, 331), -- Apollo 13
(46, 332), -- Apollo 13
(47, 333), -- La profecía
(47, 334), -- La profecía
(47, 335), -- La profecía
(47, 336), -- La profecía
(47, 337), -- La profecía
(47, 338), -- La profecía
(47, 339), -- La profecía
(47, 340), -- La profecía
(47, 341), -- La profecía
(48, 342), -- El exorcista
(48, 343), -- El exorcista
(48, 344), -- El exorcista
(48, 345), -- El exorcista
(48, 346), -- El exorcista
(48, 347), -- El exorcista
(48, 348), -- El exorcista
(48, 349), -- El exorcista
(48, 350), -- El exorcista
(49, 311), -- It (eso)
(49, 129), -- It (eso)
(49, 351), -- It (eso)
(49, 352), -- It (eso)
(49, 353), -- It (eso)
(49, 354), -- It (eso)
(49, 355), -- It (eso)
(49, 356), -- It (eso)
(49, 357), -- It (eso)
(50, 358), -- The Office
(50, 359), -- The Office
(50, 360), -- The Office
(50, 361), -- The Office
(50, 362), -- The Office
(50, 363), -- The Office
(50, 364), -- The Office
(50, 365), -- The Office
(50, 366), -- The Office
(50, 367), -- The Office
(51, 368), -- The Good Doctor
(51, 369), -- The Good Doctor
(51, 370), -- The Good Doctor
(51, 371), -- The Good Doctor
(51, 372), -- The Good Doctor
(51, 373), -- The Good Doctor
(51, 374), -- The Good Doctor
(51, 375), -- The Good Doctor
(51, 376), -- The Good Doctor
(52, 86), -- La teoria del todo
(52, 377), -- La teoria del todo
(52, 378), -- La teoria del todo
(52, 379), -- La teoria del todo
(52, 380), -- La teoria del todo
(52, 381), -- La teoria del todo
(52, 382), -- La teoria del todo
(52, 383), -- La teoria del todo
(52, 384), -- La teoria del todo
(53, 385), -- Código enigma
(53, 386), -- Código enigma
(53, 387), -- Código enigma
(53, 388), -- Código enigma
(53, 389), -- Código enigma
(53, 390), -- Código enigma
(53, 391), -- Código enigma
(53, 392), -- Código enigma
(53, 393), -- Código enigma
(54, 59), -- Talentos ocultos
(54, 394), -- Talentos ocultos
(54, 395), -- Talentos ocultos
(54, 396), -- Talentos ocultos
(54, 397), -- Talentos ocultos
(54, 398), -- Talentos ocultos
(54, 399), -- Talentos ocultos
(54, 400), -- Talentos ocultos
(54, 401), -- Talentos ocultos
(55, 94), -- Una mente brillante
(55, 144), -- Una mente brillante
(55, 402), -- Una mente brillante
(55, 403), -- Una mente brillante
(55, 404), -- Una mente brillante
(55, 405), -- Una mente brillante
(55, 406), -- Una mente brillante
(55, 407), -- Una mente brillante
(55, 408), -- Una mente brillante
(56, 184), -- Passengers
(56, 159), -- Passengers
(56, 409), -- Passengers
(56, 410), -- Passengers
(56, 411), -- Passengers
(56, 412), -- Passengers
(56, 413), -- Passengers
(56, 414), -- Passengers
(56, 415), -- Passengers
(57, 416), -- Passengers (2008)
(57, 417), -- Passengers (2008)
(57, 418), -- Passengers (2008)
(57, 419), -- Passengers (2008)
(57, 420), -- Passengers (2008)
(57, 421), -- Passengers (2008)
(57, 422), -- Passengers (2008)
(57, 423), -- Passengers (2008)
(57, 424), -- Passengers (2008)
(58, 285), -- Argo
(58, 423), -- Argo
(58, 100), -- Argo
(58, 102), -- Argo
(58, 425), -- Argo
(58, 426), -- Argo
(58, 427), -- Argo
(58, 428), -- Argo
(58, 429), -- Argo
(58, 430), -- Argo
(59, 417), -- Prometheus
(59, 431), -- Prometheus
(59, 432), -- Prometheus
(59, 433), -- Prometheus
(59, 434), -- Prometheus
(59, 435), -- Prometheus
(59, 436), -- Prometheus
(59, 437), -- Prometheus
(59, 438), -- Prometheus
(59, 439), -- Prometheus
(59, 440), -- Prometheus
(59, 441), -- Prometheus
(59, 442), -- Prometheus
(59, 443), -- Prometheus
(59, 444), -- Prometheus
(59, 445), -- Prometheus
(59, 446), -- Prometheus
(59, 447), -- Prometheus
(59, 448), -- Prometheus
(60, 431), -- Alien: Covenant
(60, 432), -- Alien: Covenant
(60, 449), -- Alien: Covenant
(60, 450), -- Alien: Covenant
(60, 451), -- Alien: Covenant
(60, 452), -- Alien: Covenant
(60, 453), -- Alien: Covenant
(60, 454), -- Alien: Covenant
(60, 455), -- Alien: Covenant
(60, 456), -- Alien: Covenant
(60, 457), -- Alien: Covenant
(60, 458), -- Alien: Covenant
(60, 459), -- Alien: Covenant
(60, 460), -- Alien: Covenant
(60, 461), -- Alien: Covenant
(60, 462), -- Alien: Covenant
(60, 463), -- Alien: Covenant
(60, 464), -- Alien: Covenant
(60, 465), -- Alien: Covenant
(61, 466), -- Life: Vida inteligente
(61, 467), -- Life: Vida inteligente
(61, 468), -- Life: Vida inteligente
(61, 469), -- Life: Vida inteligente
(61, 470), -- Life: Vida inteligente
(61, 471), -- Life: Vida inteligente
(61, 472), -- Life: Vida inteligente
(61, 473), -- Life: Vida inteligente
(61, 474), -- Life: Vida inteligente
(62, 13), -- Madame Curie
(62, 180), -- Madame Curie
(62, 475), -- Madame Curie
(62, 476), -- Madame Curie
(62, 477), -- Madame Curie
(62, 478), -- Madame Curie
(62, 479), -- Madame Curie
(62, 480), -- Madame Curie
(62, 481), -- Madame Curie
(63, 481), -- The IT Crowd
(63, 482), -- The IT Crowd
(63, 483), -- The IT Crowd
(63, 484), -- The IT Crowd
(63, 485), -- The IT Crowd
(63, 486), -- The IT Crowd
(63, 487), -- The IT Crowd
(63, 488), -- The IT Crowd
(63, 489), -- The IT Crowd
(64, 481), -- Humans
(64, 168), -- Humans
(64, 490), -- Humans
(64, 491), -- Humans
(64, 492), -- Humans
(64, 493), -- Humans
(64, 494), -- Humans
(64, 495), -- Humans
(64, 496), -- Humans
(64, 497), -- Humans
(64, 498), -- Humans
(64, 499), -- Humans
(64, 500), -- Humans
(64, 501), -- Humans
(64, 502), -- Humans
(64, 503), -- Humans
(64, 504), -- Humans
(64, 505), -- Humans
(65, 240), -- Need for Speed
(65, 506), -- Need for Speed
(65, 507), -- Need for Speed
(65, 508), -- Need for Speed
(65, 509), -- Need for Speed
(65, 510), -- Need for Speed
(65, 511), -- Need for Speed
(65, 512), -- Need for Speed
(65, 513), -- Need for Speed
(65, 514), -- Need for Speed
(65, 515), -- Need for Speed
(65, 516), -- Need for Speed
(65, 517), -- Need for Speed
(66, 161), -- Mare of Easttown
(66, 435), -- Mare of Easttown
(66, 204), -- Mare of Easttown
(66, 518), -- Mare of Easttown
(66, 519), -- Mare of Easttown
(66, 520), -- Mare of Easttown
(66, 521), -- Mare of Easttown
(66, 522), -- Mare of Easttown
(66, 523), -- Mare of Easttown
(66, 524), -- Mare of Easttown
(66, 525), -- Mare of Easttown
(66, 526), -- Mare of Easttown
(66, 527), -- Mare of Easttown
(66, 528), -- Mare of Easttown
(66, 529), -- Mare of Easttown
(67, 530), -- Ray
(67, 531), -- Ray
(67, 532), -- Ray
(67, 533), -- Ray
(67, 534), -- Ray
(67, 535), -- Ray
(67, 536), -- Ray
(67, 537), -- Ray
(67, 538), -- Ray
(68, 28), -- Black Mirror
(68, 17), -- Black Mirror
(68, 382), -- Black Mirror
(68, 244), -- Black Mirror
(68, 240), -- Black Mirror
(68, 183), -- Black Mirror
(68, 101), -- Black Mirror
(68, 539), -- Black Mirror
(68, 540), -- Black Mirror
(68, 541), -- Black Mirror
(68, 542), -- Black Mirror
(68, 543), -- Black Mirror
(68, 544), -- Black Mirror
(68, 545), -- Black Mirror
(68, 546), -- Black Mirror
(68, 547), -- Black Mirror
(68, 548), -- Black Mirror
(68, 549), -- Black Mirror
(68, 550), -- Black Mirror
(68, 551), -- Black Mirror
(68, 552), -- Black Mirror
(68, 553), -- Black Mirror
(68, 554), -- Black Mirror
(68, 555), -- Black Mirror
(68, 556), -- Black Mirror
(68, 557), -- Black Mirror
(68, 558), -- Black Mirror
(68, 559), -- Black Mirror
(68, 560), -- Black Mirror
(68, 561), -- Black Mirror
(68, 562), -- Black Mirror
(68, 563), -- Black Mirror
(68, 564), -- Black Mirror
(68, 565), -- Black Mirror
(68, 566), -- Black Mirror
(68, 567), -- Black Mirror
(68, 568), -- Black Mirror
(68, 569), -- Black Mirror
(68, 570), -- Black Mirror
(68, 571), -- Black Mirror
(68, 572), -- Black Mirror
(68, 573), -- Black Mirror
(68, 574), -- Black Mirror
(68, 575), -- Black Mirror
(68, 576), -- Black Mirror
(68, 577), -- Black Mirror
(68, 578), -- Black Mirror
(68, 579), -- Black Mirror
(68, 580), -- Black Mirror
(68, 581), -- Black Mirror
(68, 582), -- Black Mirror
(68, 583), -- Black Mirror
(68, 584), -- Black Mirror
(68, 585), -- Black Mirror
(68, 586), -- Black Mirror
(68, 587), -- Black Mirror
(68, 588), -- Black Mirror
(68, 589), -- Black Mirror
(68, 590), -- Black Mirror
(68, 591), -- Black Mirror
(68, 592), -- Black Mirror
(68, 593), -- Black Mirror
(68, 594), -- Black Mirror
(68, 595), -- Black Mirror
(68, 596), -- Black Mirror
(68, 597), -- Black Mirror
(68, 598), -- Black Mirror
(68, 599), -- Black Mirror
(68, 600), -- Black Mirror
(68, 601), -- Black Mirror
(68, 842), -- Black Mirror
(69, 602), -- Detrás de sus ojos
(69, 603), -- Detrás de sus ojos
(69, 604), -- Detrás de sus ojos
(69, 605), -- Detrás de sus ojos
(69, 606), -- Detrás de sus ojos
(69, 607), -- Detrás de sus ojos
(69, 608), -- Detrás de sus ojos
(69, 609), -- Detrás de sus ojos
(69, 610), -- Detrás de sus ojos
(70, 36), -- Her
(70, 46), -- Her
(70, 290), -- Her
(70, 269), -- Her
(70, 184), -- Her
(70, 611), -- Her
(70, 612), -- Her
(70, 613), -- Her
(70, 614), -- Her
(71, 615), -- Mision Imposible
(71, 616), -- Mision Imposible
(71, 617), -- Mision Imposible
(71, 618), -- Mision Imposible
(71, 619), -- Mision Imposible
(71, 620), -- Mision Imposible
(71, 621), -- Mision Imposible
(71, 622), -- Mision Imposible
(71, 623), -- Mision Imposible
(72, 32), -- C.I.P.O.L
(72, 267), -- C.I.P.O.L
(72, 176), -- C.I.P.O.L
(72, 84), -- C.I.P.O.L
(72, 624), -- C.I.P.O.L
(72, 625), -- C.I.P.O.L
(72, 626), -- C.I.P.O.L
(72, 627), -- C.I.P.O.L
(72, 628), -- C.I.P.O.L
(72, 629), -- C.I.P.O.L
(72, 630), -- C.I.P.O.L
(72, 631), -- C.I.P.O.L
(73, 245), -- Jumanji - Bienvenidos a la jungla
(73, 246), -- Jumanji - Bienvenidos a la jungla
(73, 247), -- Jumanji - Bienvenidos a la jungla
(73, 248), -- Jumanji - Bienvenidos a la jungla
(73, 250), -- Jumanji - Bienvenidos a la jungla
(73, 251), -- Jumanji - Bienvenidos a la jungla
(73, 252), -- Jumanji - Bienvenidos a la jungla
(73, 253), -- Jumanji - Bienvenidos a la jungla
(73, 254), -- Jumanji - Bienvenidos a la jungla
(73, 255), -- Jumanji - Bienvenidos a la jungla
(73, 256), -- Jumanji - Bienvenidos a la jungla
(73, 257), -- Jumanji - Bienvenidos a la jungla
(73, 258), -- Jumanji - Bienvenidos a la jungla
(73, 259), -- Jumanji - Bienvenidos a la jungla
(73, 260), -- Jumanji - Bienvenidos a la jungla
(74, 286), -- Mujer Maravilla 1984
(74, 171), -- Mujer Maravilla 1984
(74, 1), -- Mujer Maravilla 1984
(74, 292), -- Mujer Maravilla 1984
(74, 632), -- Mujer Maravilla 1984
(74, 633), -- Mujer Maravilla 1984
(74, 634), -- Mujer Maravilla 1984
(74, 635), -- Mujer Maravilla 1984
(74, 636), -- Mujer Maravilla 1984
(75, 285), -- El Contador
(75, 281), -- El Contador
(75, 213), -- El Contador
(75, 146), -- El Contador
(75, 519), -- El Contador
(75, 637), -- El Contador
(75, 638), -- El Contador
(75, 639), -- El Contador
(75, 640), -- El Contador
(75, 641), -- El Contador
(75, 642), -- El Contador
(75, 643), -- El Contador
(75, 644), -- El Contador
(75, 645), -- El Contador
(75, 646), -- El Contador
(75, 647), -- El Contador
(75, 648), -- El Contador
(75, 649), -- El Contador
(76, 253), -- Mala Educación
(76, 650), -- Mala Educación
(76, 651), -- Mala Educación
(76, 652), -- Mala Educación
(76, 653), -- Mala Educación
(76, 654), -- Mala Educación
(76, 655), -- Mala Educación
(76, 656), -- Mala Educación
(76, 657), -- Mala Educación
(76, 658), -- Mala Educación
(76, 659), -- Mala Educación
(76, 660), -- Mala Educación
(76, 661), -- Mala Educación
(76, 662), -- Mala Educación
(78, 510), -- Noche en el Museo
(78, 663), -- Noche en el Museo
(78, 664), -- Noche en el Museo
(78, 665), -- Noche en el Museo
(78, 666), -- Noche en el Museo
(78, 667), -- Noche en el Museo
(78, 668), -- Noche en el Museo
(78, 669), -- Noche en el Museo
(78, 670), -- Noche en el Museo
(78, 671), -- Noche en el Museo
(78, 672), -- Noche en el Museo
(78, 673), -- Noche en el Museo
(78, 674), -- Noche en el Museo
(79, 510), -- Bohemian Rhapsody
(79, 389), -- Bohemian Rhapsody
(79, 675), -- Bohemian Rhapsody
(79, 676), -- Bohemian Rhapsody
(79, 677), -- Bohemian Rhapsody
(79, 678), -- Bohemian Rhapsody
(79, 679), -- Bohemian Rhapsody
(79, 680), -- Bohemian Rhapsody
(79, 681), -- Bohemian Rhapsody
(80, 615), -- Rock of Ages
(80, 425), -- Rock of Ages
(80, 682), -- Rock of Ages
(80, 683), -- Rock of Ages
(80, 684), -- Rock of Ages
(80, 685), -- Rock of Ages
(80, 686), -- Rock of Ages
(80, 687), -- Rock of Ages
(80, 688), -- Rock of Ages
(80, 689), -- Rock of Ages
(80, 690), -- Rock of Ages
(80, 691), -- Rock of Ages
(80, 692), -- Rock of Ages
(80, 693), -- Rock of Ages
(80, 694), -- Rock of Ages
(81, 199), -- Super 8
(81, 695), -- Super 8
(81, 696), -- Super 8
(81, 697), -- Super 8
(81, 698), -- Super 8
(81, 699), -- Super 8
(81, 700), -- Super 8
(81, 701), -- Super 8
(81, 702), -- Super 8
(82, 184), -- Jurassic World - El reino caido
(82, 183), -- Jurassic World - El reino caido
(82, 438), -- Jurassic World - El reino caido
(82, 122), -- Jurassic World - El reino caido
(82, 703), -- Jurassic World - El reino caido
(82, 704), -- Jurassic World - El reino caido
(82, 705), -- Jurassic World - El reino caido
(82, 706), -- Jurassic World - El reino caido
(82, 707), -- Jurassic World - El reino caido
(82, 708), -- Jurassic World - El reino caido
(82, 709), -- Jurassic World - El reino caido
(82, 710), -- Jurassic World - El reino caido
(82, 711), -- Jurassic World - El reino caido
(83, 169), -- Indiana Jones
(83, 712), -- Indiana Jones
(83, 713), -- Indiana Jones
(83, 714), -- Indiana Jones
(83, 715), -- Indiana Jones
(83, 716), -- Indiana Jones
(83, 717), -- Indiana Jones
(83, 718), -- Indiana Jones
(83, 719), -- Indiana Jones
(84, 720), -- Los Goonies
(84, 721), -- Los Goonies
(84, 722), -- Los Goonies
(84, 723), -- Los Goonies
(84, 724), -- Los Goonies
(84, 725), -- Los Goonies
(84, 726), -- Los Goonies
(84, 727), -- Los Goonies
(84, 728), -- Los Goonies
(85, 671), -- Cars
(85, 729), -- Cars
(85, 730), -- Cars
(85, 731), -- Cars
(85, 732), -- Cars
(85, 733), -- Cars
(85, 734), -- Cars
(85, 735), -- Cars
(85, 736), -- Cars
(86, 263), -- Los pingüinos de Madagascar
(86, 737), -- Los pingüinos de Madagascar
(86, 738), -- Los pingüinos de Madagascar
(86, 739), -- Los pingüinos de Madagascar
(86, 740), -- Los pingüinos de Madagascar
(86, 741), -- Los pingüinos de Madagascar
(86, 742), -- Los pingüinos de Madagascar
(86, 743), -- Los pingüinos de Madagascar
(87, 744), -- Cementerio de animales
(87, 745), -- Cementerio de animales
(87, 746), -- Cementerio de animales
(87, 747), -- Cementerio de animales
(87, 748), -- Cementerio de animales
(87, 749), -- Cementerio de animales
(87, 750), -- Cementerio de animales
(87, 751), -- Cementerio de animales
(87, 752), -- Cementerio de animales
(88, 753), -- Poltergeist
(88, 754), -- Poltergeist
(88, 755), -- Poltergeist
(88, 756), -- Poltergeist
(88, 757), -- Poltergeist
(88, 758), -- Poltergeist
(88, 759), -- Poltergeist
(88, 760), -- Poltergeist
(88, 761), -- Poltergeist
(89, 325), -- El código Da Vinci
(89, 619), -- El código Da Vinci
(89, 404), -- El código Da Vinci
(89, 762), -- El código Da Vinci
(89, 763), -- El código Da Vinci
(89, 764), -- El código Da Vinci
(89, 765), -- El código Da Vinci
(89, 766), -- El código Da Vinci
(89, 767), -- El código Da Vinci
(90, 106), -- Johnny English
(90, 768), -- Johnny English
(90, 769), -- Johnny English
(90, 770), -- Johnny English
(90, 771), -- Johnny English
(90, 772), -- Johnny English
(90, 773), -- Johnny English
(90, 774), -- Johnny English
(90, 775), -- Johnny English
(91, 450), -- Almost Famous
(91, 201), -- Almost Famous
(91, 776), -- Almost Famous
(91, 777), -- Almost Famous
(91, 778), -- Almost Famous
(91, 779), -- Almost Famous
(91, 780), -- Almost Famous
(91, 781), -- Almost Famous
(91, 782), -- Almost Famous
(92, 247), -- Escuela de Rock
(92, 123), -- Escuela de Rock
(92, 783), -- Escuela de Rock
(92, 784), -- Escuela de Rock
(92, 785), -- Escuela de Rock
(92, 786), -- Escuela de Rock
(92, 787), -- Escuela de Rock
(92, 788), -- Escuela de Rock
(92, 789), -- Escuela de Rock
(93, 790), -- Mi pobre angelito
(93, 791), -- Mi pobre angelito
(93, 792), -- Mi pobre angelito
(93, 793), -- Mi pobre angelito
(93, 794), -- Mi pobre angelito
(93, 795), -- Mi pobre angelito
(93, 796), -- Mi pobre angelito
(93, 797), -- Mi pobre angelito
(93, 798), -- Mi pobre angelito
(94, 671), -- Aprendices fuera de línea
(94, 268), -- Aprendices fuera de línea
(94, 210), -- Aprendices fuera de línea
(94, 362), -- Aprendices fuera de línea
(94, 427), -- Aprendices fuera de línea
(94, 799), -- Aprendices fuera de línea
(94, 800), -- Aprendices fuera de línea
(94, 801), -- Aprendices fuera de línea
(94, 802), -- Aprendices fuera de línea
(94, 803), -- Aprendices fuera de línea
(94, 804), -- Aprendices fuera de línea
(94, 805), -- Aprendices fuera de línea
(94, 806), -- Aprendices fuera de línea
(94, 807), -- Aprendices fuera de línea
(94, 808), -- Aprendices fuera de línea
(94, 809), -- Aprendices fuera de línea
(94, 810), -- Aprendices fuera de línea
(94, 811), -- Aprendices fuera de línea
(94, 812), -- Aprendices fuera de línea
(94, 813), -- Aprendices fuera de línea
(95, 814), -- Outsourced
(95, 815), -- Outsourced
(95, 816), -- Outsourced
(95, 817), -- Outsourced
(95, 818), -- Outsourced
(95, 819), -- Outsourced
(95, 820), -- Outsourced
(95, 821), -- Outsourced
(95, 822), -- Outsourced
(95, 823), -- Outsourced
(95, 824), -- Outsourced
(95, 825), -- Outsourced
(95, 826), -- Outsourced
(96, 40), -- Miedo Profundo
(96, 827), -- Miedo Profundo
(96, 828), -- Miedo Profundo
(96, 829), -- Miedo Profundo
(96, 830), -- Miedo Profundo
(96, 831), -- Miedo Profundo
(96, 832), -- Miedo Profundo
(96, 833), -- Miedo Profundo
(96, 834), -- Miedo Profundo
(97, 198), -- Everest
(97, 721), -- Everest
(97, 466), -- Everest
(97, 86), -- Everest
(97, 580), -- Everest
(97, 633), -- Everest
(97, 472), -- Everest
(97, 624), -- Everest
(97, 496), -- Everest
(97, 29), -- Everest
(97, 835), -- Everest
(97, 836), -- Everest
(97, 837), -- Everest
(97, 838), -- Everest
(97, 839), -- Everest
(97, 840), -- Everest
(97, 841), -- Everest
(98, 222), -- La Familia Addams
(98, 223), -- La Familia Addams
(98, 224), -- La Familia Addams
(98, 225), -- La Familia Addams
(98, 226), -- La Familia Addams
(98, 227), -- La Familia Addams
(98, 228), -- La Familia Addams
(98, 229), -- La Familia Addams
(98, 230); -- La Familia Addams

INSERT INTO contenido_generos (ID_contenido, ID_genero) VALUES
(1, 1),  -- The Crown (Drama)
(1, 12), -- The Crown (Suceso Real)
(2, 1),  -- Riverdale (Drama)
(2, 2),  -- Riverdale (Misterio)
(2, 4),  -- Riverdale (Acción)
(3, 3),  -- The Mandalorian (Ciencia Ficción)
(3, 4),  -- The Mandalorian (Acción)
(3, 7),  -- The Mandalorian (Fantasía)
(4, 1),  -- The Umbrella Academy (Drama)
(4, 7),  -- The Umbrella Academy (Fantasía)
(4, 3),  -- The Umbrella Academy (Ciencia Ficción)
(5, 1),  -- Gambito de Dama (Drama)
(5, 17),  -- Gambito de Dama (Ficción)
(5, 18),  -- Gambito de Dama (Sucesos)
(6, 1),  -- Enola Holmes (Drama)
(6, 2),  -- Enola Holmes (Misterio)
(6, 17),  -- Enola Holmes (Ficción)
(7, 9),  -- Guasón (Suspenso)
(7, 19),  -- Guasón (Crimen)
(8, 3),  -- Avengers: End Game (Ciencia-Ficción)
(8, 4),  -- Avengers: End Game (Acción)
(8, 5),  -- Avengers: End Game (Aventura)
(9, 5),  -- Juego de Tronos (Aventura)
(9, 7),  -- Juego de Tronos (Fantasía)
(9, 1),  -- Juego de Tronos (Drama)
(10, 4), -- The Flash (Acción)
(10, 7), -- The Flash (Fantasía)
(10, 3), -- The Flash (Ciencia-Ficción)
(11, 6), -- The Big Bang Theory (Comedia)
(11, 7), -- The Big Bang Theory (Fantasía)
(11, 17), -- The Big Bang Theory (Ficción)
(12, 6), -- Friends (Comedia)
(12, 11),-- Friends (Familia)
(12, 1),-- Friends (Drama)
(13, 1), -- Anne with an "E" (Drama)
(13, 11), -- Anne with an "E" (Familia)
(13, 20), -- Anne with an "E" (Western)
(14, 1), -- Expedientes Secretos "X" (Drama)
(14, 3), -- Expedientes Secretos "X" (Ciencia-Ficción)
(14, 9), -- Expedientes Secretos "X" (Suspenso)
(15, 1), -- Chernobyl (Drama)
(15, 12), -- Chernobyl (Suceso Real)
(16, 1), -- Westworld (Drama)
(16, 3), -- Westworld (Ciencia Ficción)
(16, 20), -- Westworld (Western)
(17, 1), -- Halt and Catch Fire (Drama)
(17, 16), -- Halt and Catch Fire (Tecnologia)
(17, 17), -- Halt and Catch Fire (Ficcion)
(18, 1), -- Ava (Drama)
(18, 4), -- Ava (Acción)
(18, 9), -- Ava (Suspenso)
(19, 4), -- Aves de presa (Harley Quinn) (Acción)
(19, 17), -- Aves de presa (Harley Quinn) (Ficcion)
(19, 6), -- Aves de presa (Harley Quinn) (Comedia)
(20, 4), -- Archivo (Acción)
(20, 3), -- Archivo (Ciencia Ficción)
(20, 9), -- Archivo (Suspenso)
(21, 6), -- Jumanji - The Next Level (Comedia)
(21, 17), -- Jumanji - The Next Level (Ficcion)
(21, 5), -- Jumanji - The Next Level (Aventura)
(21, 7), -- Jumanji - The Next Level (Fantasia)
(22, 3), -- 3022 (Sci-Fi)
(22, 9), -- 3022 (Suspenso)
(22, 21), -- 3022 (Futurista)
(23, 7), -- IT - Capítulo 2 (Fantasia)
(23, 9), -- IT - Capítulo 2 (Suspenso)
(23, 8), -- IT - Capítulo 2 (Terror)
(24, 7), -- Pantera Negra (Fantasia)
(24, 5), -- Pantera Negra (Aventura)
(24, 4), -- Pantera Negra (Acción)
(25, 1),-- Contra lo imposible (Ford vs Ferrari) (Drama)
(25, 5),-- Contra lo imposible (Ford vs Ferrari) (Aventura)
(25, 13),-- Contra lo imposible (Ford vs Ferrari) (Historia)
(26, 1), -- Centígrados (Drama)
(26, 9), -- Centígrados (Suspenso)
(26, 22), -- Centígrados (Intriga)
(27, 4), -- DOOM: Aniquilación (Acción)
(27, 8), -- DOOM: Aniquilación (Terror)
(27, 3), -- DOOM: Aniquilación (Sci-Fi)
(27, 21), -- DOOM: Aniquilación (Futurista)
(28, 1), -- Contagio (Drama)
(28, 9), -- Contagio (Suspenso)
(28, 17), -- Contagio (Ficcion)
(29, 1), -- Viuda Negra (Drama)
(29, 4), -- Viuda Negra (Acción)
(29, 8), -- Viuda Negra (Aventura)
(30, 1), -- The Martian (Drama)
(30, 3), -- The Martian (Ciencia Ficción)
(30, 5), -- The Martian (Aventura)
(31, 1), -- Ex-Machina (Drama)
(31, 3), -- Ex-Machina (Ciencia Ficción)
(31, 9), -- Ex-Machina (Suspenso)
(32, 9), -- Jurassic World (Suspenso)
(32, 5), -- Jurassic World (Aventura)
(32, 17), -- Jurassic World (Ficcion)
(33, 1), -- Soy leyenda (Drama)
(33, 8), -- Soy leyenda (Terror)
(33, 17), -- Soy leyenda (Ficcion)
(34, 1),-- El primer hombre en la luna (Drama)
(34, 12),-- El primer hombre en la luna (Suceso Real)
(35, 4), -- Titanes del Pacífico - La insurrección (Acción)
(35, 7), -- Titanes del Pacífico - La insurrección (Fantasia)
(35, 3), -- Titanes del Pacífico - La insurrección (Ciencia Ficción)
(36, 1),-- JOBS: La Vida De Steve Jobs (Drama)
(36, 13),-- JOBS: La Vida De Steve Jobs (Historia)
(36, 16),-- JOBS: La Vida De Steve Jobs (Tecnologia)
(37, 16),-- Piratas de Silicon Valley (Tecnologia)
(37, 13),-- Piratas de Silicon Valley (Historia)
(37, 6),-- Piratas de Silicon Valley (Comedia)
(38, 1),-- Red Social (Drama)
(38, 13),-- Red Social (Historia)
(38, 16),-- Red Social (Tecnologia)
(39, 1), -- Antitrust (Drama)
(39, 4), -- Antitrust (Accion)
(39, 9), -- Antitrust (Suspenso)
(40, 1), -- Stowaway (Drama)
(40, 3), -- Stowaway (Ciencia Ficción)
(40, 9), -- Stowaway (suspenso)
(41, 4), -- Liga de la Justicia - Zack Snyder (Acción)
(41, 7), -- Liga de la Justicia - Zack Snyder (Fantasia)
(41, 3), -- Liga de la Justicia - Zack Snyder (Sci-Fi)
(41, 5), -- Liga de la Justicia - Zack Snyder (Aventura)
(42, 6), -- Two and a Half Men (Comedia)
(42, 11),-- Two and a Half Men (Familia)
(42, 5), -- Two and a Half Men (Aventura)
(43, 1), -- La casa de Papel (Drama)
(43, 5), -- La casa de Papel (Aventura)
(43, 4), -- La casa de Papel (Accion)
(44, 9), -- Stranger Things (Suspenso)
(44, 2), -- Stranger Things (Misterio)
(44, 11), -- Stranger Things (Familia)
(45, 3), -- Gravity (Ciencia Ficción)
(45, 9), -- Gravity (Suspenso)
(45, 1), -- Gravity (Drama)
(46, 1),-- Apollo 13 (Drama)
(46, 13),-- Apollo 13 (Historia)
(46, 12),-- Apollo 13 (Suceso Real)
(47, 8), -- La Profecía (Terror)
(47, 9), -- La Profecía (Suspenso)
(47, 1), -- La Profecía (Drama)
(48, 8), -- El Exorcista (Terror)
(48, 9), -- El Exorcista (Suspenso)
(48, 1), -- El Exorcista (Drama)
(49, 8), -- It (Eso) (Terror)
(49, 9), -- It (Eso) (Suspenso)
(49, 1), -- It (Eso) (Drama)
(50, 6), -- The Office (Comedia)
(50, 11), -- The Office (Familia)
(51, 1), -- The Good Doctor (Drama)
(51, 11), -- The Good Doctor (Familia)
(52, 12),-- La teoría del todo (Suceso Real)
(52, 1),-- La teoría del todo (Drama)
(52, 10),-- La teoría del todo (Romance)
(53, 12),-- Código enigma (Suceso Real)
(53, 1),-- Código enigma (Drama)
(53, 9),-- Código enigma (Suspenso)
(53, 13),-- Código enigma (Historia)
(54, 12),-- Talentos ocultos (Suceso Real)
(54, 9),-- Talentos ocultos (Suspenso)
(54, 1),-- Talentos ocultos (Drama)
(54, 13),-- Talentos ocultos (Historia)
(55, 1), -- Una mente brillante (Drama)
(55, 12), -- Una mente brillante (Suceso Real)
(55, 10), -- Una mente brillante (Romance)
(55, 13), -- Una mente brillante (Historia)
(56, 1), -- Passengers (Drama)
(56, 10), -- Passengers (Romance)
(56, 3), -- Passengers (Ciencia Ficción)
(57, 1), -- Passengers (2) (Drama)
(57, 9), -- Passengers (2) (Suspenso)
(57, 2), -- Passengers (2) (Misterio)
(57, 10), -- Passengers (2) (Romance)
(58, 12),-- Argo (Suceso Real)
(58, 1),-- Argo (Drama)
(58, 9),-- Argo (Suspenso)
(59, 3), -- Prometheus (Ciencia Ficción)
(59, 5), -- Prometheus (Aventura)
(59, 2), -- Prometheus (Misterio)
(60, 3), -- Alien: Covenant (Ciencia Ficción, Terror)
(60, 2), -- Alien: Covenant (Ciencia Ficción, Terror)
(60, 5), -- Alien: Covenant (Ciencia Ficción, Terror)
(61, 3), -- Life: La vida inteligente (Ciencia Ficción)
(61, 9), -- Life: La vida inteligente (Ciencia Ficción)
(61, 8), -- Life: La vida inteligente (Ciencia Ficción)
(62, 13),-- Madame Curie (Suceso Real)
(62, 10),-- Madame Curie (Suceso Real)
(62, 1),-- Madame Curie (Suceso Real)
(62, 12),-- Madame Curie (Suceso Real)
(63, 6), -- The IT Crowd (Comedia)
(64, 1), -- Humans (Drama)
(64, 3), -- Humans (Drama)
(64, 7), -- Humans (Drama)
(64, 2), -- Humans (Drama)
(65, 4), -- Need for Speed (Acción)
(65, 1), -- Need for Speed (Acción)
(65, 9), -- Need for Speed (Acción)
(66, 19), -- Mare of Easttown (Drama)
(66, 1), -- Mare of Easttown (Drama)
(66, 9), -- Mare of Easttown (Drama)
(66, 2), -- Mare of Easttown (Drama)
(67, 12),-- Ray (Suceso Real)
(67, 13),-- Ray (Suceso Real)
(67, 1),-- Ray (Suceso Real)
(67, 15),-- Ray (Suceso Real)
(68, 2), -- Black Mirror (Misterio)
(68, 1), -- Black Mirror (Misterio)
(68, 3), -- Black Mirror (Misterio)
(68, 7), -- Black Mirror (Misterio)
(69, 1), -- Detrás de tus ojos (Drama)
(69, 9), -- Detrás de tus ojos (Drama)
(69, 19), -- Detrás de tus ojos (Drama)
(70, 3), -- Her (Ciencia Ficción, Drama)
(70, 1), -- Her (Ciencia Ficción, Drama)
(70, 10), -- Her (Ciencia Ficción, Drama)
(71, 4), -- Misión: Imposible (Acción)
(71, 1), -- Misión: Imposible (Acción)
(71,10), -- Misión: Imposible (Acción)
(72, 4), -- El Agente de C.I.P.O.L.
(72, 1), -- El Agente de C.I.P.O.L.
(72, 5), -- El Agente de C.I.P.O.L.
(72, 6), -- El Agente de C.I.P.O.L.
(73, 5), -- Jumanji: Bienvenidos a la Jungla (Acción)
(73, 6), -- Jumanji: Bienvenidos a la Jungla (Acción)
(73, 7), -- Jumanji: Bienvenidos a la Jungla (Acción)
(73, 17), -- Jumanji: Bienvenidos a la Jungla (Acción)
(74, 6), -- Mujer Maravilla 1984 (Acción)
(74, 17), -- Mujer Maravilla 1984 (Acción)
(74, 5), -- Mujer Maravilla 1984 (Acción)
(74, 7), -- Mujer Maravilla 1984 (Acción)
(75, 1), -- El Contador (Drama)
(75, 5), -- El Contador (Drama)
(75, 9), -- El Contador (Drama)
(75, 19), -- El Contador (Drama)
(76, 1), -- Mala Educación (Drama)
(76, 12), -- Mala Educación (Drama)
(76, 13), -- Mala Educación (Drama)
(78, 6), -- Noche en el Museo (Drama)
(78, 4), -- Noche en el Museo (Drama)
(78, 3), -- Noche en el Museo (Drama)
(78, 5), -- Noche en el Museo (Drama)
(78, 11), -- Noche en el Museo (Drama)
(79, 1),-- Bohemian Rhapsody (Música)
(79, 15),-- Bohemian Rhapsody (Música)
(79, 13),-- Bohemian Rhapsody (Música)
(79, 12),-- Bohemian Rhapsody (Música)
(80, 15),-- Rock of Ages (Música)
(80, 6),-- Rock of Ages (Música)
(80, 10),-- Rock of Ages (Música)
(80, 1),-- Rock of Ages (Música)
(81, 3), -- Super 8 (Drama)
(81, 2), -- Super 8 (Drama)
(81, 9), -- Super 8 (Drama)
(82, 3), -- Jurassic World - El reino caído (Ciencia Ficción, Aventura)
(82, 4), -- Jurassic World - El reino caído (Ciencia Ficción, Aventura)
(82, 5), -- Jurassic World - El reino caído (Ciencia Ficción, Aventura)
(83, 5), -- Indiana Jones (Aventura)
(83, 4), -- Indiana Jones (Aventura)
(84, 11), -- Los Goonies (Aventura)
(84, 5), -- Los Goonies (Aventura)
(84, 4), -- Los Goonies (Aventura)
(85, 14), -- Cars (Animación, Familia, Aventura, Comedia)
(85, 11), -- Cars (Animación, Familia, Aventura, Comedia)
(85, 6), -- Cars (Animación, Familia, Aventura, Comedia)
(86, 11),
(86, 5),
(86, 6),
(86, 14),
(87, 1),
(87, 9),
(87, 8),
(88, 1),
(88, 9),
(88, 8),
(89, 1),
(89, 9),
(89, 5),
(89, 2),
(90, 6),
(90, 11),
(90, 4),
(91, 1),
(91, 12),
(91, 15),
(92, 6),
(92, 15),
(92, 11),
(93, 11),
(93, 6),
(93, 15),
(94, 11),
(94, 6),
(95, 11),
(95, 6),
(96, 9),
(96, 1),
(96, 8),
(97, 12),
(97, 1),
(97, 9),
(98, 11),
(98, 6),
(98, 7);


