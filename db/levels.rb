Level.destroy_all

Level.create(
  code: 'L1C5',
  # image_source: 'https://elrinconcolombiano.com/leyenda-de-juan-machete/',
  # image_url: 'https://elrinconcolombiano.com/wp-content/uploads/2021/11/Leyenda-de-Juan-Machete.jpg',
  text: '<span>La leyenda de Juan Machete</span><span></span><span>Cuenta la leyenda que Juan Machete era en vida un hombre llamado Juan Francisco Ortiz, el cual era dueño de algunos terrenos en la Macarena en el Departamento de Arauca; era un hombre ambicioso y adquirió el apodo o sobrenombre de “Juan Machete” debido a que pasaba todo el tiempo con un machete en la cintura, dicho machete lo había mandado a hacer adaptado a su gran estatura, de igual forma era conocido en la región por su gran manejo del mismo.</span><span></span><span>La ambición de Juan machete lo llevo a realizar un pacto con el diablo ofreciendo su alma y la de su mujer e hijos a cambio de riquezas, para ello tomo un sapo y una gallina negra y les cosió los ojos y los enterró vivos a la media noche de un jueves santo; al año siguiente el mismo día y a la misma hora los desenterró y luego se dirigió a un lugar solitario donde tiro los huesos al viento e invoco al diablo, allí se le apareció el maligno, quien acepto el pacto. A partir de ese momento a Juan machete le empezó a ir bien en todo lo que hacía, sus terrenos se convirtieron en los más fértiles, las vacas le parían de a dos terneros, su fortuna fue creciendo más y más.</span><span></span><span>Un día un gran toro negro apareció en sus terrenos, destacaba por su gran tamaño y sus mugidos estrepitosos, al principio no le prestó atención ya que pensó que sería el toro de algún vecino, pero al día siguiente se encontró con una cabra (chivo) que le hablo, esta le indico que a su hacienda llegarían unos trabajadores que debía contratar, estos irían comandados por un hombre al que él debía bautizar como constantinoplo, debía realizar el bautizo rezando un credo al revés, Juan Machete hizo lo que esta le indico y sus hombres se encargaron de hacerlo el más rico de toda la región, pero también el más abusivo y tirano, se encargó de apropiarse de las tierras de sus vecinos y de imponerse en la región.</span><span></span><span>Luego de varios años de buena fortuna Juan Machete empezó a recibir señales de que el día de pagar su deuda con el diablo estaba cerca, una gran sequía golpeo la región y todo su ganado murió, todo, excepto el toro negro, su familia lo abandonó al igual que todos sus hombres, su gran casa fue consumida por un inesperado incendio.</span><span></span><span>Así que asustado y arrepentido tomo toda la riqueza que aún le quedaba y las junto en cofres que escondió en una cueva subterránea dentro del bosque, en ese lugar se quedó custodiando el tesoro hasta que murió y fue ante el diablo a pagar su deuda. Juan machete regreso en forma de espectro (espanto) custodiando el tesoro que enterró y persiguiendo con su gran machete a todo el que intenta tomarlo.</span>',
  text_source: 'https://elrinconcolombiano.com/leyenda-de-juan-machete/',
  video_source: 'https://drive.google.com/file/d/13S1Mnlw4zQEtqBPykTh1M8fzfmDgC2Jb/preview',
  video_url: 'https://drive.google.com/file/d/13S1Mnlw4zQEtqBPykTh1M8fzfmDgC2Jb/preview',
  course: Course.all.find_by(code: 'C5A')
)

Level.create(
  code: 'L2C5',
  video_source: 'https://youtu.be/1xrZoBFNR7Y',
  video_url: 'https://www.youtube.com/embed/1xrZoBFNR7Y',
  text: "<h1>El Chino De Los Mandados de Walter Silva</h1><div><p><span>Vecina como le va,</span><span>Manda decir mi mamá</span><span>Que si nos puede prestar</span><span>Un pocillito e' manteca</span><span>Que amanecimos sin plata,</span><span>Que en la tienda ya no fían</span><span>Porque va grande la cuenta, (repetir 2 veces)</span></p><p><span>Que por más tardar mañana</span><span>Si diosito nos la presta,</span><span>Baja un carro platanero</span><span>Unas dos pachas vendemos</span><span>Así alguito se solventa,</span><span>Que nos perdone el pereque</span><span>Y se dista de paciencia</span><span>Y que mi dios se lo pague</span><span>Que hay vamos a mano vuelta</span></p><p><span>Para cantarle a mi madre</span><span>Yo no utilizo más letras</span><span>Que las que se necesitan</span><span>Pa' cantarle a la humildad</span><span>Que mi madre representa</span><span>Su honor y su sacrificio</span><span>Su lucha, su fortaleza</span></p><p><span>Vivan las madres del campo</span><span>En toda Colombia entera</span></p><p><span>Gracias madrecita buena</span><span>Nunca me acosté sin cena,</span><span>Tu decías que en tripa llena</span><span>Vive el corazón contento,</span><span>Perdóname por contarlo,</span><span>Pero no puedo cantar algo</span><span>Si es que no lo siento</span></p><p><span>Gracias madrecita buena</span><span>Nunca me acosté sin cena,</span><span>Tu decías que en tripa llena</span><span>Vive el corazón contento,</span><span>Perdóname por contarlo,</span><span>Pero no puedo cantar algo</span><span>Si es que no lo siento</span></p><p><span>Si hubiese alguna manera</span><span>De retroceder el tiempo</span><span>Madre y si tú me mandaras</span><span>De nuevo a que nos prestaran</span><span>Algo para el alimento,</span><span>Te lo juro madre mía</span><span>Preciso en este momento,</span><span>Me veo corriendo descalzo</span><span>Sin camisa contra el viento</span></p><p><span>Ya no habrá necesidad,</span><span>Pero vive el sentimiento</span><span>A veces me demoraba</span><span>Vieja y tú me regañabas</span><span>Que cogiera fundamento,</span><span>Pero era que en el camino</span><span>Me elevaba el pensamiento</span><span>Soñando ser un cantante</span><span>Y algún día cantarte un verso</span></p></div>",
  text_source: "<p>Fuente: Musixmatch</p><p>Compositores: Walter Silva Gutierrez</p><p>Letra de El Chino de los Mandados © Onerpm Songs</p>",
  course: Course.all.find_by(code: 'C5A')
)

Level.create(
  code: 'L3C5',
  image_source: 'https://www.paho.org/es/documentos/afiche-sintomas-dengue',
  image_url: 'https://lh4.googleusercontent.com/8OcAMV-4hoqntbXArFyf9Zvi7KPmk4Ql9pYe2spKqdSIcjYRzHshR1CVm3-hvBL26t8=w2400',
  course: Course.all.find_by(code: 'C5A')
)

Level.create(
  code: 'L4C5',
  text: '<span>Breve historia del cacao y del chocolate</span><span></span><span>La palabra cacao procede de la azteca "cacahuatl". Según la leyenda, el cacao era el árbol más bello del paraíso de los aztecas (Los aztecas fueron un pueblo muy poderoso que dominó durante siglos lo que hoy es México), que le atribuían múltiples virtudes, calmar el hambre y la sed, proporcionar la sabiduría universal y curar las enfermedades.</span><span></span><span>Se sabe que los primeros árboles del cacao crecían de forma natural a la sombra de las selvas tropicales en las cuencas del Amazonas y del Orinoco, hace ya unos 4000 años. Los mayas empezaron a cultivarlo hace más de 2500 años.</span><span></span><span>El cacao simbolizaba para los mayas vigor físico y longevidad, lo usaban como medicina siendo recetado por sus médicos como relajante, como estimulante y como reconstituyente. La manteca del cacao se usaba como pomada para curar heridas.</span><span></span><span>Fueron los mayas los que crearon un brebaje amargo llamado "chocolha" hecho de semillas de cacao, que solo podían consumir nobles y reyes. Se describía diversas formas de elaborarlo y perfumarlo, más líquido o espeso, con más o menos espuma, con miel, maíz o chile picante.</span><span></span><span>En 1502 Cristóbal Colón recibió, como ofrenda de bienvenida, armas, telas y sacos de unas habas oscuras que, en la sociedad azteca, servían a la vez de moneda y de producto de consumo. Aunque fue Hernán Cortés quien envió el primer cargamento de cacao a España en 1524.</span><span></span><span>Ya en España los monjes adaptaron el "chocolha" al paladar Europeo, sustituyendo las especias utilizadas en América por miel, azúcar y leche. La corte española mantuvo como secreto de estado, durante un siglo, la preparación de esta bebida y, sólo los monjes conocían el procedimiento para convertir el fruto del cacao en chocolate y, la utilizaban sobre todo en cuaresma ya que la iglesia consideraba que no rompía el ayuno. A pesar del secretismo, el chocolate llegó a otros países, a Francia uno de los primeros, gracias a la boda entre la María Teresa de España y Luis XIV el Rey Sol, ya que esta era muy aficionada a esta bebida.</span><span></span><span>El primer libro donde se habla del chocolate, data del 1631 y fue escrito por un médico cirujano de Écija provincia de Sevilla, donde se hace referencia a otro libro anterior y, en el que se daba la fórmula para un medicamento hecho principalmente con chocolate.</span><span></span><span>En 1644 fue ordenado por la Corte de Madrid y sus alcaldes que, nadie, ni tienda ni en domicilio ni en parte alguna pueda vender chocolate como bebida para evitar así que fuese tomado en cualquier sitio y en cualquier momento por la gente, ya que se había convertido en una bebida muy popular, obligando de esta manera a ser vendido como pastillas y ser consumido solo en domicilios.</span>',
  text_source: 'https://www.directoalpaladar.com/cultura-gastronomica/breve-historia-del-cacao-y-del-chocolate',
  course: Course.all.find_by(code: 'C5A')
)

Level.create(
  code: 'L1C3',
  # image_source: 'https://elrinconcolombiano.com/leyenda-la-candileja-o-bola-de-fuego/',
  # image_url: 'https://elrinconcolombiano.com/wp-content/uploads/2021/03/Mito-o-Leyenda-de-la-candileja-o-la-bola-de-Fuego-1024x577.jpg',
  text: '<span>La bola de fuego</span><span></span><span>La Candileja o la Bola fuego fue en vida una anciana que malcriaba a más no poder a sus dos nietos los cuales eran mal educados, groseros y crueles con su propia abuela.</span><span></span><span>Los dos nietos pasaban todo el día saltando de un lado a otro, rompiendo objetos y muebles del hogar, haciéndole travesuras humillantes a la anciana, una de esas humillantes travesuras fue pedirle a su abuela que se pusiese en cuatro patas y actuase para ellos como una mula o caballo de carga, para después montarla, la anciana con tal de complacerlos accedió y estos la ensillaron y estuvieron todo el día sobre la espalda de la pobre anciana, cuando la mujer murió y llego a rendir cuentas al cielo, san Pedro la recibió enojado y le regaño y critico la poca falta de dureza en la educación para con sus nietos y por ello le condeno a purgar sus penas en el mundo en forma de tres bolas de fuego que poseen tentáculos llameantes, las tres bolas de fuego representan el cuerpo de la anciana y sus dos nietos.</span>',
  text_source: "https://elrinconcolombiano.com/leyenda-la-candileja-o-bola-de-fuego/",
  video_source: 'https://drive.google.com/file/d/12A71Ya5YZDaPjDGDF78h8eYQthu2Ecg5/preview',
  video_url: 'https://drive.google.com/file/d/12A71Ya5YZDaPjDGDF78h8eYQthu2Ecg5/preview',
  course: Course.all.find_by(code: 'C3A')
)

Level.create(
  code: 'L2C3',
  video_source: 'https://youtu.be/1xrZoBFNR7Y',
  video_url: 'https://www.youtube.com/embed/1xrZoBFNR7Y',
  text: "<h1>El Chino De Los Mandados de Walter Silva</h1><div><p><span>Vecina como le va,</span><span>Manda decir mi mamá</span><span>Que si nos puede prestar</span><span>Un pocillito e' manteca</span><span>Que amanecimos sin plata,</span><span>Que en la tienda ya no fían</span><span>Porque va grande la cuenta, (repetir 2 veces)</span></p><p><span>Que por más tardar mañana</span><span>Si diosito nos la presta,</span><span>Baja un carro platanero</span><span>Unas dos pachas vendemos</span><span>Así alguito se solventa,</span><span>Que nos perdone el pereque</span><span>Y se dista de paciencia</span><span>Y que mi dios se lo pague</span><span>Que hay vamos a mano vuelta</span></p><p><span>Para cantarle a mi madre</span><span>Yo no utilizo más letras</span><span>Que las que se necesitan</span><span>Pa' cantarle a la humildad</span><span>Que mi madre representa</span><span>Su honor y su sacrificio</span><span>Su lucha, su fortaleza</span></p><p><span>Vivan las madres del campo</span><span>En toda Colombia entera</span></p><p><span>Gracias madrecita buena</span><span>Nunca me acosté sin cena,</span><span>Tu decías que en tripa llena</span><span>Vive el corazón contento,</span><span>Perdóname por contarlo,</span><span>Pero no puedo cantar algo</span><span>Si es que no lo siento</span></p><p><span>Gracias madrecita buena</span><span>Nunca me acosté sin cena,</span><span>Tu decías que en tripa llena</span><span>Vive el corazón contento,</span><span>Perdóname por contarlo,</span><span>Pero no puedo cantar algo</span><span>Si es que no lo siento</span></p><p><span>Si hubiese alguna manera</span><span>De retroceder el tiempo</span><span>Madre y si tú me mandaras</span><span>De nuevo a que nos prestaran</span><span>Algo para el alimento,</span><span>Te lo juro madre mía</span><span>Preciso en este momento,</span><span>Me veo corriendo descalzo</span><span>Sin camisa contra el viento</span></p><p><span>Ya no habrá necesidad,</span><span>Pero vive el sentimiento</span><span>A veces me demoraba</span><span>Vieja y tú me regañabas</span><span>Que cogiera fundamento,</span><span>Pero era que en el camino</span><span>Me elevaba el pensamiento</span><span>Soñando ser un cantante</span><span>Y algún día cantarte un verso</span></p></div>",
  text_source: "<p>Fuente: Musixmatch</p><p>Compositores: Walter Silva Gutierrez</p><p>Letra de El Chino de los Mandados © Onerpm Songs</p>",
  course: Course.all.find_by(code: 'C3A')
)

Level.create(
  code: 'L3C3',
  image_source: 'https://www.lidl.es/es/fin-carre-proceso-de-elaboracion-del-chocolate/s2081',
  image_url: 'https://www.lidl.es/es/asset/images/AF_Produccion-chocolate.jpg',
  course: Course.all.find_by(code: 'C3A')
)

Level.create(
  code: 'L4C3',
  video_source: 'https://youtu.be/1MEu-on29Ao',
  video_url: 'https://www.youtube.com/embed/1MEu-on29Ao',
  course: Course.all.find_by(code: 'C3A')
)

