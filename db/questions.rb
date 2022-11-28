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
    'd' => 'que andaría descalzo y corriendo por un alimento'
  },
  text: "<span>Lee la siguiente estrofa de la cancion</span><span>Si hubiese alguna manera</span><span>De retroceder el tiempo</span><span>Madre y si tú me mandaras</span><span>De nuevo a que nos prestaran</span><span>Algo para el alimento,</span><span>Te lo juro madre mía</span><span>Preciso en este momento,</span><span>Me veo corriendo descalzo</span><span>Sin camisa contra el viento</span><span>¿Qué se puede concluir de este párrafo?</span>",
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


