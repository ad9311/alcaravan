Question.destroy_all

#questions for quinto level 1

Question.create(
  code: 'Q1L1C5',
  correct_answer: 'b',
  options: {
    'a' => 'Ocurre en este instante.',
    'b' => 'Ocurrió en un tiempo lejano.',
    'c' => 'Ocurrió hace poco.',
    'd' => 'Ocurrirá luego.'
  },
  text: 'Según el texto, ¿en qué momento ocurre la historia?',
  level: Level.find_by(code: 'L1C5')
)

Question.create(
  code: 'Q2L1C5',
  correct_answer: 'c',
  options: {
    'a' => "<div><span>Primero:</span><span>Enterró a un sapo y una gallina negra</span></div><div><span>Luego:</span><span>Se hizo millonario</span></div><div><span>Finalmente:</span><span>Ofreció al diablo su alma y la de su familia</span></div>",
    'b' => "<div><span>Primero:</span><span>Ofreció al diablo su alma y la de su familia</span></div><div><span>Luego:</span><span>Enterró a un sapo y una gallina negra</span></div><div><span>Finalmente:</span><span>Se hizo millonario</span></div>",
    'c' => "<div><span>Primero:</span><span>Enterró a un sapo y una gallina negra</span></div><div><span>Luego:</span><span>Ofreció al diablo su alma y la de su familia</span></div><div><span>Finalmente:</span><span>Se hizo millonario</span></div>",
    'd' => "<div><span>Primero:</span><span>Ofreció al diablo su alma y la de su familia</span></div><div><span>Luego:</span><span>Se hizo millonario</span></div><div><span>Finalmente:</span><span>Enterró a un sapo y una gallina negra</span></div>"
  },
  text: '¿Cuál es el orden en que suceden las acciones antes de que Juan Machete perdiera todo su ganado y a su familia?',
  level: Level.find_by(code: 'L1C5')
)

Question.create(
  code: 'Q3L1C5',
  correct_answer: 'd',
  options: {
    'a' => 'El diablo',
    'b' => 'La esposa e hijos',
    'c' => 'Constantinoplo',
    'd' => 'Juan Machete'
  },
  text: '¿Quién es el personaje principal de la historia anterior?',
  level: Level.find_by(code: 'L1C5')
)

Question.create(
  code: 'Q4L1C5',
  correct_answer: 'b',
  options: {
    'a' => 'El toro',
    'b' => 'El chivo',
    'c' => 'Constantinoplo',
    'd' => 'La esposa'
  },
  text: 'En la historia, ¿quién dice “que a su hacienda llegarían unos trabajadores que debía contratar” ',
  level: Level.find_by(code: 'L1C5')
)

Question.create(
  code: 'Q5L1C5',
  correct_answer: 'a',
  options: {
    'a' => 'Sepultó',
    'b' => 'Escondió',
    'c' => 'Hundió',
    'd' => 'Aplanó'
  },
  text: 'Lee el siguiente fragmento del texto: “tomo un sapo y una gallina negra y les cosió los ojos y los enterró vivos a la media noche de un jueves santo” ¿Cuál de las siguientes palabras significa lo mismo que la palabra “enterró”?',
  level: Level.find_by(code: 'L1C5')
)

#questions for quinto level 2

Question.create(
  code: 'Q1L2C5',
  correct_answer: 'c',
  options: {
    'a' => 'Que las tripas hacen parte del corazón',
    'b' => 'Que cuando se come se llena el corazón',
    'c' => 'Comer nos da felicidad y tranquilidad',
    'd' => 'Cuando se come se llena la tripa'
  },
  text: '¿A qué se refiere el autor cuando usa la frase “Tu decías que en tripa llena Vive el corazón contento” ',
  level: Level.find_by(code: 'L2C5')
)

Question.create(
  code: 'Q2L2C5',
  correct_answer: 'c',
  options: {
    'a' => 'Que se arrepiente de lo vivido',
    'b' => 'Que realizara una máquina del tiempo',
    'c' => 'Que si regresara a su niñez haría lo que su madre lo mandara',
    'd' => 'Que andaría descalzo y corriendo por un alimento'
  },
  text: "<p>Lee la siguiente estrofa de la cancion</p><span>Si hubiese alguna manera</span><span>De retroceder el tiempo</span><span>Madre y si tú me mandaras</span><span>De nuevo a que nos prestaran</span><span>Algo para el alimento,</span><span>Te lo juro madre mía</span><span>Preciso en este momento,</span><span>Me veo corriendo descalzo</span><span>Sin camisa contra el viento</span><p>¿Qué se puede concluir de este párrafo?</p>",
  level: Level.find_by(code: 'L2C5')
)

Question.create(
  code: 'Q3L2C5',
  correct_answer: 'd',
  options: {
    'a' => 'A su vecina',
    'b' => 'A la pobreza de un niño',
    'c' => 'A las madres de Colombia',
    'd' => 'Al a madre del autor'
  },
  text: 'De acuerdo al contenido de la historia, ¿a quién va dirigida esta cancion?',
  level: Level.find_by(code: 'L2C5')
)

Question.create(
  code: 'Q4L2C5',
  correct_answer: 'a',
  options: {
    'a' => 'Para agregar información a una enumeración.',
    'b' => 'Para señalar las consecuencias de una acción.',
    'c' => 'Para oponer dos ideas diferentes.',
    'd' => 'Para introducir un concepto.'
  },
  text: 'Lee el siguiente enunciado del texto: “Que nos perdone el pereque y se dista de paciencia”. ¿Para qué se usa la palabra “y”?',
  level: Level.find_by(code: 'L2C5')
)

Question.create(
  code: 'Q5L2C5',
  correct_answer: 'b',
  options: {
    'a' => 'Los vecinos se deben ayudar entre si',
    'b' => 'Las madres se esfuerzan por el bienestar de sus hijos',
    'c' => 'Los hijos están para realizar los mandados',
    'd' => 'Las madres del campo tienen problemas con sus hijos'
  },
  text: '¿Cuál de las siguientes opciones recoge la idea general del texto?',
  level: Level.find_by(code: 'L2C5')
)

#questions for quinto level 3

Question.create(
  code: 'Q1L3C5',
  correct_answer: 'c',
  options: {
    'a' => 'Recostarse en la cama',
    'b' => 'Acudir a la droguería',
    'c' => 'Acudir al establecimiento de salud más cercano',
    'd' => 'Acudir a la escuela'
  },
  text: 'Según la información que se presentan en el afiche ¿Qué se debe hacer si se presentan los síntomas?',
  level: Level.find_by(code: 'L3C5')
)

Question.create(
  code: 'Q2L3C5',
  correct_answer: 'a',
  options: {
    'a' => 'La imagen explica las acciones mencionadas en el texto',
    'b' => 'La imagen ilustra la idea del afiche',
    'c' => 'El texto contradice lo que se presenta en la imagen',
    'd' => 'El texto critica las acciones que se señalan en la imagen'
  },
  text: "<span>Observa la imagen y lee el texto que la acompaña</span><img src='#' alt='image' /><span>¿Cuál de las siguientes opciones describe la relación entre la imagen anterior y el texto que lo acompaña?</span>",
  level: Level.find_by(code: 'L3C5')
)

Question.create(
  code: 'Q3L3C5',
  correct_answer: 'b',
  options: {
    'a' => 'El dengue es una enfermedad común',
    'b' => 'El dengue puede llegar a ser mortal si no se trata en un establecimiento de salud',
    'c' => 'El dolor de cabeza significa que se tiene dengue',
    'd' => 'El dengue se puede prevenir'
  },
  text: '¿Qué se puede concluir de la información que brinda el afiche sobre el dengue?',
  level: Level.find_by(code: 'L3C5')
)

Question.create(
  code: 'Q4L3C5',
  correct_answer: 'b',
  options: {
    'a' => 'Presenta en qué casos ocurre y cómo actuar en una urgencia.',
    'b' => 'Presenta los síntomas para prevenir que los que padecen dengue se traten en casa',
    'c' => 'Señala cómo se puede prevenir y da algunas recomendaciones.',
    'd' => 'Indica qué hacer para atender los síntomas y presenta ejemplos.'
  },
  text: '¿Qué estrategia se utiliza en el afiche para explicar que el dengue puede ser mortal?',
  level: Level.find_by(code: 'L3C5')
)

Question.create(
  code: 'Q5L3C5',
  correct_answer: 'd',
  options: {
    'a' => 'Los hospitales',
    'b' => 'Los humanos',
    'c' => 'Los cambios de clima',
    'd' => 'El zancudo'
  },
  text: 'Según la información del afiche ¿Quién es el responsable de transmitir el dengue?',
  level: Level.find_by(code: 'L3C5')
)

# questions for level 4
Question.create(
  code: 'Q1L4C5',
  correct_answer: 'd',
  options: {
    'a' => 'Señalar las intervenciones en un diálogo.',
    'b' => 'Encerrar las palabras dichas por una persona.',
    'c' => 'Incluir información para precisar una idea.',
    'd' => 'Resaltar el significado de una expresión.'
  },
  text: 'En el primer párrafo del texto, ¿para qué se emplean los paréntesis ()?',
  level: Level.find_by(code: 'L4C5')
)

Question.create(
  code: 'Q2L4C5',
  correct_answer: 'd',
  options: {
    'a' => 'Presentar una opinión acerca del tema.',
    'b' => 'Criticar la actitud de los consumidores de cacao',
    'c' => 'Motivar al lector a actuar de una manera reflexiva.',
    'd' => 'Informar al lector sobre lo difícil que era adquirir el cacao en la antigüedad.'
  },
  text: '¿Cuál es la función del último párrafo del texto?',
  level: Level.find_by(code: 'L4C5')
)

Question.create(
  code: 'Q3L4C5',
  correct_answer: 'a',
  options: {
    'a' => 'Personas interesadas en la historia del chocolate',
    'b' => 'Consumidores de productos del cacao',
    'c' => 'Fabricantes de productos derivados del chocolate',
    'd' => 'Interesados en la fabricación del chocolate'
  },
  text: 'Teniendo en cuenta el contenido ¿a quien va dirigido principalmente el texto?',
  level: Level.find_by(code: 'L4C5')
)

Question.create(
  code: 'Q4L4C5',
  correct_answer: 'c',
  options: {
    'a' => 'Narrativo',
    'b' => 'Descriptivo',
    'c' => 'Informativo',
    'd' => 'Lirico'
  },
  text: 'Según las características del texto leído, se puede decir que es un texto:',
  level: Level.find_by(code: 'L4C5')
)

Question.create(
  code: 'Q5L4C5',
  correct_answer: 'b',
  options: {
    'a' => 'Liquido',
    'b' => 'Bebida',
    'c' => 'Guisado',
    'd' => 'Jarabe'
  },
  text: 'Lee el siguiente enunciado del texto: “Fueron los mayas los que crearon un brebaje amargo llamado "chocolha" hecho de semillas de cacao” Un sinónimo de la palabra resaltada en el enunciado es:',
  level: Level.find_by(code: 'L4C5')
)


# questions level 1 course 3

Question.create(
  code: 'Q1L1C3',
  correct_answer: 'c',
  options: {
    'a' => "<span>Primero:</span><span>Una anciana tenía dos nietos</span>",
    'b' => "<span>Luego:</span><span>Falleció</span>",
    'c' => "<span>Después:</span><span>San Pedro la</span>",
    'd' => "<span>Finalmente:</span><span>Sus nietos no la</span>"
  },
  text: 'De acuerdo a la lectura anterior como se desarrolló la leyenda de la bola de fuego o Candileja:',
  level: Level.find_by(code: 'L1C3')
)

Question.create(
  code: 'Q2L1C3',
  correct_answer: 'a',
  options: {
    'a' => 'Por la falta de dureza y educación que tuvo la anciana hacia sus nietos',
    'b' => 'Por el exceso de amor que tenía la anciana por sus nietos.',
    'c' => 'Por conceder todos los caprichos a sus nietos',
    'd' => 'Por ser amiga de sus nietos'
  },
  text: 'Según el texto ¿Por qué San Pedro condena a la anciana a convertirse en una bola de fuego?',
  level: Level.find_by(code: 'L1C3')
)

Question.create(
  code: 'Q3L1C3',
  correct_answer: 'b',
  options: {
    'a' => 'San Pedro',
    'b' => 'Los nietos',
    'c' => 'Los hijos',
    'd' => 'Su padre'
  },
  text: 'De acuerdo con el texto ¿Quiénes eran groseros y maleducados con la anciana?',
  level: Level.find_by(code: 'L1C3')
)

Question.create(
  code: 'Q4L1C3',
  correct_answer: 'd',
  options: {
    'a' => 'Los nietos',
    'b' => 'San Pedro',
    'c' => 'Los hijos',
    'd' => 'La anciana'
  },
  text: 'En el fragmento del texto: “llego a rendir cuentas al cielo, san Pedro la recibió enojado y le regaño y critico la poca falta de dureza…” ¿a quien se refiere la expresión llego?',
  level: Level.find_by(code: 'L1C3')
)

Question.create(
  code: 'Q5L1C3',
  correct_answer: 'b',
  options: {
    'a' => 'Los nietos hacían actividades respetando las normas',
    'b' => 'Una abuela no ponía límites a sus nietos y ellos no la respetaban',
    'c' => 'Una viejita vivía con sus nietos consentidos',
    'd' => 'Dos nietos jugaban mucho en su casa sin importar las consecuencias'
  },
  text: 'Lee el siguiente fragmento del texto: “… una anciana que malcriaba a más no poder a sus dos nietos” ¿Cuál de las siguientes opciones dice lo mismo en otras palabras?',
  level: Level.find_by(code: 'L1C3')
)

Question.create(
  code: 'Q1L2C3',
  correct_answer: 'b',
  options: {
    'a' => 'Jugó con los hijos de la vecina',
    'b' => 'Pidió regalado un pocillo de manteca',
    'c' => 'Saco dos pachas de plátano',
    'd' => 'Dio el mensaje de su mamá: que les prestara un pocillo de manteca'
  },
  text: '¿Qué ocurrió con el “chino de los mandados” cuando llego donde su vecina?',
  level: Level.find_by(code: 'L2C3')
)

Question.create(
  code: 'Q2L2C3',
  correct_answer: 'b',
  options: {
    'a' => 'Amaneció la tienda cerrada',
    'b' => 'No tienen plata y en la tienda no fían',
    'c' => 'No hay manteca en la tienda',
    'd' => 'Su mamá está enferma'
  },
  text: 'Según el “chino de los mandados” ¿por qué pide prestado el pocillo de manteca?',
  level: Level.find_by(code: 'L2C3')
)

Question.create(
  code: 'Q3L2C3',
  correct_answer: 'c',
  options: {
    'a' => 'A su madre',
    'b' => 'Al conductor del carro platanero',
    'c' => 'A la vecina',
    'd' => 'A la señora de la tienda'
  },
  text: '¿A quién se dirige el “chino de los mandados” cuando dice: “Que nos perdone el pereque y se dista de paciencia”?',
  level: Level.find_by(code: 'L2C3')
)

Question.create(
  code: 'Q4L2C3',
  correct_answer: 'c',
  options: {
    'a' => 'A la vecina',
    'b' => 'Al carro platanero',
    'c' => 'A su madre',
    'd' => 'A la señora de la tienda'
  },
  text: 'En la historia de la cancion ¿a quién le canta el “chino de los mandados”',
  level: Level.find_by(code: 'L2C3')
)

Question.create(
  code: 'Q5L2C3',
  correct_answer: 'c',
  options: {
    'a' => 'El protagonista de la historia',
    'b' => 'Es el escritor de la cancion',
    'c' => 'El narrador de la historia',
    'd' => 'Es el cantante'
  },
  text: '¿Cuál es la relación entre el título de la cancion y el cantante cantada?',
  level: Level.find_by(code: 'L2C3')
)

Question.create(
  code: 'Q1L3C3',
  correct_answer: 'b',
  options: {
    'a' => 'Comparación de dos ideas',
    'b' => 'Unión de dos oraciones',
    'c' => 'Oposición de dos oraciones',
    'd' => 'Negación de dos ideas'
  },
  text: 'Lee el siguiente enunciado del texto “se descascarillan los granos y se separa la semilla de la piel obteniéndose virutas de cacao” ¿Qué permite la “y” en el enunciado?',
  level: Level.find_by(code: 'L3C3')
)

Question.create(
  code: 'Q2L3C3',
  correct_answer: 'b',
  options: {
    'a' => 'Molienda',
    'b' => 'Tostado',
    'c' => 'Conchado',
    'd' => 'templado'
  },
  text: 'De acuerdo al texto ¿Qué parte del proceso de elaboración del chocolate realza el aroma y sabor del cacao?',
  level: Level.find_by(code: 'L3C3')
)

Question.create(
  code: 'Q3L3C3',
  correct_answer: 'c',
  options: {
    'a' => 'La molienda',
    'b' => 'EL sembrado',
    'c' => 'El conchado',
    'd' => 'La fertilización'
  },
  text: 'Según el texto ¿Qué parte del proceso de la elaboración del cacao ayuda a reducir la acidez del cacao?',
  level: Level.find_by(code: 'L3C3')
)

Question.create(
  code: 'Q4L3C3',
  correct_answer: 'd',
  options: {
    'a' => 'Indicar la cantidad de semillas de cacao que se necesitan para elaborar el chocolate',
    'b' => 'Señalar el tiempo que se demora la elaboración del chocolate',
    'c' => 'Señalar la cantidad de agua que necesita una planta de cacao',
    'd' => 'Indicar el paso a paso de la elaboración del chocolate'
  },
  text: 'Los números que aparecen en el texto ¿Qué permiten?',
  level: Level.find_by(code: 'L3C3')
)

Question.create(
  code: 'Q5L3C3',
  correct_answer: 'a',
  options: {
    'a' => 'Que la elaboración del chocolate es un proceso de elaborado y dedicado',
    'b' => 'Que hay diferentes clases de cacao',
    'c' => 'Que algunos chocolates llevan mas proceso que otros',
    'd' => 'Que la elaboración del cacao es una tarea sencilla.'
  },
  text: 'En el texto se dice que: En la “degustación se ve reflejado todo el trabajo y cuidado del proceso de elaboración del chocolate” ¿Qué se concluye de esta afirmación?',
  level: Level.find_by(code: 'L3C3')
)

Question.create(
  code: 'Q1L4C3',
  correct_answer: 'c',
  options: {
    'a' => 'El cielo y la pradera son uno solo',
    'b' => 'La pradera no tienen fin',
    'c' => 'De lejos la pradera y el horizonte parecen uno solo',
    'd' => 'El cielo está cerca de la pradera'
  },
  text: 'En el video “El centauro de la libertad” La frase: “donde el cielo y la pradera se funden en el horizonte” se puede concluir que:',
  level: Level.find_by(code: 'L4C3')
)

Question.create(
  code: 'Q2L4C3',
  correct_answer: 'b',
  options: {
    'a' => 'Inventó',
    'b' => 'Clavó',
    'c' => 'Sacó',
    'd' => 'Ocultó'
  },
  text: 'Cuando en el video mencionan “a pablo se le metió una idea en la cabeza que se rehusaba a salir” la palabra “metió” puede ser sinónimo de:',
  level: Level.find_by(code: 'L4C3')
)

Question.create(
  code: 'Q3L4C3',
  correct_answer: 'a',
  options: {
    'a' => 'Jinetes con lanzas',
    'b' => 'chigüiros',
    'c' => 'Caimanes',
    'd' => 'El ejército realista'
  },
  text: '¿Qué encontró pablo y la reina a su llegada a Tame?',
  level: Level.find_by(code: 'L4C3')
)

Question.create(
  code: 'Q4L4C3',
  correct_answer: 'c',
  options: {
    'a' => 'En el horizonte',
    'b' => 'En Tame',
    'c' => 'En el pantano de Vargas',
    'd' => 'En la finca de Pablo'
  },
  text: '¿En dónde se libró la batalla que le dio la libertad a Colombia?',
  level: Level.find_by(code: 'L4C3')
)

Question.create(
  code: 'Q5L4C3',
  correct_answer: 'b',
  options: {
    'a' => 'Porque los jinetes se comportaban como animales',
    'b' => 'Porque los jinetes y los caballos parecían uno solo',
    'c' => 'Porque los caballos son seres de mitos',
    'd' => 'Porque los jinetes amaban a sus caballos'
  },
  text: '¿Por qué se dice que los jinetes y sus caballos parecían centauros?',
  level: Level.find_by(code: 'L4C3')
)

