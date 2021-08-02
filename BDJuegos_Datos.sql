--INGRESO DE DATOS-- 

USE BDJuegos 

GO 

  
--EXECUTE DE DESARROLLADORES 
execute spAgregar_Desarrolladores 'Rockstar Games' 
execute spAgregar_Desarrolladores 'CD PROJEKT RED' 
execute spAgregar_Desarrolladores 'Innersloth' 
execute spAgregar_Desarrolladores 'Electronic Arts' 
execute spAgregar_Desarrolladores 'CAPCOM Co.' 
execute spAgregar_Desarrolladores 'Techland' 
execute spAgregar_Desarrolladores 'Re Logic' 
EXECUTE spAgregar_Desarrolladores 'Devolver Digital'
EXECUTE spAgregar_Desarrolladores 'Nomada Studio'
EXECUTE spAgregar_Desarrolladores 'Askiisoft'
EXECUTE spAgregar_Desarrolladores 'Dodge Roll'
EXECUTE spAgregar_Desarrolladores 'DeadToast'
EXECUTE spAgregar_Desarrolladores 'Mediatonic'


GO 


--EXECUTE DE DISTRIBUIDORAS 


execute spAgregar_Distribuidoras 'Rockstar Games North' 
execute spAgregar_Distribuidoras 'CD PROJEKT RED' 
execute spAgregar_Distribuidoras 'Innersloth' 
execute spAgregar_Distribuidoras 'DICE' 
execute spAgregar_Distribuidoras 'CAPCOM Co.' 
execute spAgregar_Distribuidoras 'Techland Publishing' 
execute spAgregar_Distribuidoras 'Electronic Arts' 	 
execute spAgregar_Distribuidoras 'Re Logic' 
EXECUTE spAgregar_Distribuidoras 'Devolver Digital'
GO 

--EXECUTE DE JUEGOS 

execute spAgregar_Juego 'Grand Theft Auto Vice City',10.20, 'DES-00001', 'DIS-00001', 0 , 'La historia transcurre en 1986 en la ficticia ciudad de Vice City, y es protagonizada por Tommy Vercetti, un hombre ex-convicto tras haber cumplido una condena de 15 años de prisión por haber asesinado a varios hombres en Harwood, Liberty City, bajo ordenes de Sonny Forelli.' , '20021027' 
execute spAgregar_Juego 'Grand Theft Auto San Andreas',15.20, 'DES-00001', 'DIS-00001', 20 , 'Ambientado en 1992, la obra cuenta la historia de Carl Johnson “CJ”, quien decide volver a Los Santos tras cinco años de haberse ausentado en Liberty City  después de enterarse del asesinato de su madre.' , '20041026' 
execute spAgregar_Juego 'Grand Theft Auto IV', 20.10, 'DES-00001', 'DIS-00001', 0 , 'Grand Theft Auto IV narra la historia de Niko Bellic, Niko ayuda a Roman con sus problemas y con su empresa de taxis mientras trata de encontrar su rumbo en la nueva ciudad.' , '20080428' 
execute spAgregar_Juego 'Grand Theft Auto V', 28.70, 'DES-00001', 'DIS-00001', 0 , 'Se trata de una aventura de acción de mundo abierto con multitud de misiones en la que encarnamos a tres personajes distintos: Trevor, Michael y Franklin.' , '20130917' 
execute spAgregar_Juego 'Grand Theft Auto III', 5.20, 'DES-00001', 'DIS-00001', 0 , 'Es un videojuego de acción desarrollado por la compañía Rockstar North y publicado por la compañía Rockstar Games en el año 2001. Es el tercer título de la serie Grand Theft Auto y el primero en presentar un ambiente de juego en tercera dimensión.' , '20011022' 
execute spAgregar_Juego 'Red Dead Redemption', 15.10, 'DES-00001', 'DIS-00001', 10 , 'La historia de RDR1 transcurre en los últimos años del lejano oeste estadounidense y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense' , '20100518' 
execute spAgregar_Juego 'Red Dead Redemption 2', 40.55, 'DES-00001', 'DIS-00001', 25 , 'Red Dead Redemption 2 es un videojuego de acción-aventura western, en un mundo abierto y en perspectiva de primera y tercera persona,' , '20181026' 
execute spAgregar_Juego 'The Witcher', 15.10, 'DES-00002', 'DIS-00002', 75 , 'The Witcher es un juego de rol ambientado en un siniestro mundo de fantasía donde reina la ambigüedad moral.' , '20071026' 
execute spAgregar_Juego 'The Witcher 2', 20.10, 'DES-00002', 'DIS-00002', 0 , 'Al igual que la primera entrega, está situado tras los eventos de la saga de novelas de Andrzej Sapkowski, en las cuales está basado.' , '20110517' 
execute spAgregar_Juego 'The Witcher 3', 25.60, 'DES-00002', 'DIS-00002', 0 , 'The Witcher 3: Wild Hunt es un juego de rol de acción con una perspectiva en tercera persona . Los jugadores controlan a Geralt de Rivia, un cazador de monstruos conocido como brujo. ... Los jugadores pueden bloquear y contrarrestar los ataques enemigos con sus espadas.' , '20150518' 
execute spAgregar_Juego 'Among Us', 5.00, 'DES-00003', 'DIS-00003', 0 , 'Among Us es un juego muy parecido al clásico "El asesino" que hemos jugado alguna vez en cartas, pero llevado al mundo de los videojuegos.' , '20180615' 
execute spAgregar_Juego 'Henry Stickmin', 3.00, 'DES-00003', 'DIS-00003', 0 , 'Henry Stickmin es el personaje principal de sus juegos como Breaking the Bank. El jugador puede llevar a cabo elecciones que pueden determinar el destino de Henry en la historia.' , '20200807' 
execute spAgregar_Juego 'FIFA 2018', 9.25, 'DES-00004', 'DIS-00007', 0 , 'FIFA 18 es un videojuego de fútbol desarrollado, producido y distribuido por EA Sports para las plataformas de PS4, Xbox One, PC, Nintendo Switch, PS3 y XBOX 360' , '20170929' 
execute spAgregar_Juego 'FIFA 2019', 12.30, 'DES-00004', 'DIS-00007', 0 , 'FIFA 19 es un videojuego de simulación de fútbol desarrollado por EA Vancouver y EA Rumania, ayudando también en su desarrollo está también EA España y EA Holanda, como parte de la serie FIFA de Electronic Arts.' , '20180913' 
execute spAgregar_Juego 'FIFA 2020', 20.50, 'DES-00004', 'DIS-00007', 0 , 'FIFA 20, desarrollado por EA Sports y editado por Electronic Arts para PC, PlayStation 4, Xbox One y Switch, es una nueva entrega de la celebrada saga futbolística con las mejores ligas, clubes, jugadores y estadios junto a los ya clásicos modos historia y Ultimate Team.' , '20190924' --15
execute spAgregar_Juego 'FIFA 2021', 40.12, 'DES-00004', 'DIS-00007', 10 , 'FIFA 21 es un videojuego de fútbol del año 2020 disponible para Microsoft Windows, PlayStation 4, Xbox One y Nintendo Switch, y también es el primer videojuego de la serie FIFA para PlayStation 5 y Xbox Series X|S.' , '20201005' 
execute spAgregar_Juego 'Battlefield V', 19.50, 'DES-00004', 'DIS-00004', 40 , 'Battlefield V es un videojuego de disparos y acción bélica en primera persona​ desarrollado por DICE y distribuido por Electronic Arts.' , '20180904' 
execute spAgregar_Juego 'Battlefield 4', 35.20, 'DES-00004', 'DIS-00004', 30 , 'Battlefield 4™ es la superproducción de acción que redefine el género, creada a partir de momentos que borran la línea que separa un juego de la gloria. ... Battlefield te ofrece la libertad para hacer más y ser más, mientras sacas partido a tus puntos fuertes y te abres camino hacia la victoria.' , '20131029' 
execute spAgregar_Juego 'Resident Evil Village', 40.99, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil Village tiene como objetivo crear una innovadora experiencia de survival horror como nunca antes. Años después de la pesadilla, Ethan Winters ha conseguido cierta estabilidad y una vida normal con su familia.' , '20210507' --19
execute spAgregar_Juego 'Resident Evil 7 Biohazard', 21.99, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil 7 es el primer título de la saga principal que emplea una perspectiva en primera persona donde el protagonista es perseguido por los miembros de la familia Baker.' , '20170124' 
execute spAgregar_Juego 'Resident Evil 6', 12.29, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil 6 (abreviado comúnmente como RE6) conocido en Japón como Biohazard 6 es un videojuego de disparos en tercera persona del género dramatic horror' , '20121002' 
execute spAgregar_Juego 'Resident Evil 5', 10.20, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil 5 se caracteriza por poseer un sistema de juego similar a Resident Evil 4, con controles sensibles al contexto y escenas dinámicas donde se debe presionar una serie de botones para sobrevivir o esquivar ataques de los enemigos.' , '20090305' 
execute spAgregar_Juego 'Resident Evil 4', 9.50, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil 4 es un juego de terror en tecera persona altamente aclamado por su popularidad en la playstation 2' , '20050111' 
execute spAgregar_Juego 'Resident Evil 3 Remastered', 32.25, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil 3 Remastered es el remake de Resident evil 3 creado por capcom ' , '20200403' --24
execute spAgregar_Juego 'Resident Evil 2 Remastered', 30.10, 'DES-00005', 'DIS-00005', 0 , 'Resident Evil 2 ofrece una nueva visión de la clásica saga de terror de supervivencia con imágenes increíblemente realistas, audio impactante, una nueva cámara sobre el hombro y controles modernizados en la parte superior de los modos de juego del juego original.', '20190125' 
execute spAgregar_Juego 'Dying Light', 12.25, 'DES-00006', 'DIS-00006', 28 , 'Dying Light es un juego con un amplio y peligroso mundo abierto ubicado en la ciudad ficticia de Harran plagada por zombies' , '20150126' 
execute spAgregar_Juego 'Dying Light 2', 40.10, 'DES-00006', 'DIS-00006', 85 , 'Dying Light 2 es un videojuego de mundo abierto en primera persona que se sitúa en un mundo postapocalíptico en el que se ha sido víctima de una epidemia zombie' , '20211207' 
execute spAgregar_Juego 'Terraria', 5.25, 'DES-00007', 'DIS-00008', 15 , 'Terraria es un videojuego de mundo abierto en 2D. Contiene elementos de construcción, exploración, aventura y combate, muy similar a juegos clásicos de la consola Super NES' , '20110516' 
EXECUTE spAgregar_Juego 'Hotline Miami', 2.23, 'DES-00008', 'DIS-00009', 0, 'Hotline Miami es un juego de trepidante acción repleto de la más extrema brutalidad, tiros sin compasión y combates cuerpo a cuerpo.', '20121023'
EXECUTE spAgregar_Juego 'Hotline Miami 2', 3.12, 'DES-00008', 'DIS-00009', 0, 'Siendo una secuela de Hotline Miami, Wrong Number tiene lugar antes y después de los acontecimientos de su predecesora, y se centra en las consecuencias de las acciones dadas por el protagonista anterior', '20150310'
EXECUTE spAgregar_Juego 'Gris', 1.75, 'DES-00009', 'DIS-00009', 0, 'Gris es una joven perdida en su propio mundo después de haberse enfrentado a una experiencia dolorosa. Nosotros seremos los encargados de acompañarla en su viaje a través del dolor, manifestado por su vestido, dentro de este mundo donde la realidad se desvanece.', '20181213'
EXECUTE spAgregar_Juego 'Enter the Gungeon', 1.80, 'DES-00011', 'DIS-00009', 0, 'Enter the Gungeon es un juego de lucha de disparos en mazmorras que tiene como protagonistas a una banda de bandidos que solo quieren disparar, saquear y esquivar', '20160415'
EXECUTE spAgregar_Juego 'Katana Zero', 4.75, 'DES-00010', 'DIS-00009', 0, 'Katana ZERO es un juego de acción y plataformas neo-noir rebosante de personalidad, acción vertiginosa y combates de muerte instantánea', '20190418'
EXECUTE spAgregar_Juego 'My Friend Pedro', 4.75, 'DES-00012', 'DIS-00009', 0, 'My Friend Pedro es un ballet violento sobre la amistad, la imaginación y la lucha de un hombre por aniquilar a todo el que se interpone en su camino por orden de un plátano parlante.', '20190620'
EXECUTE spAgregar_Juego 'Fall Guys', 11.00, 'DES-00013', 'DIS-00009', 0, 'El título es un multijugador en línea donde 60 personas cooperan o se enfrentan para enfrentar diferentes obstáculos rebotando, moviéndose y saltando de forma graciosa.', '20200804'
GO


--EXECUTE DE CATEGORIAS 


EXECUTE spAgregar_Categoria'Mundo Abierto','C-OPENWRLD' 

EXECUTE spAgregar_Categoria'Multijugador','C-MLTIPLYR' 
EXECUTE spAgregar_Categoria'Disparos','C-0SHOOTER' 
EXECUTE spAgregar_Categoria'Sandbox','C-0SANDBOX' 
EXECUTE spAgregar_Categoria'Juego 3D','C-003DGAME' 
EXECUTE spAgregar_Categoria'Juego 2D','C-002DGAME' 
EXECUTE spAgregar_Categoria'Zombies','C-SZOMBIES' 
EXECUTE spAgregar_Categoria'Horror','C-00HORROR' 
EXECUTE spAgregar_Categoria'Deportes','C-DEPORTES' 
EXECUTE spAgregar_Categoria'Futbol','C-00FUTBOL' 
EXECUTE spAgregar_Categoria'Accion','C-00ACCION' 
EXECUTE spAgregar_Categoria'Jugador contra jugador','C-00000PVP' 
EXECUTE spAgregar_Categoria'Jugador contra el ambiente','C-00000PVE' 
EXECUTE spAgregar_Categoria'Indie','C-0000IND'

GO 


--EXECUTE CATEGORIAS X JUEGOS 

--Vice city
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000001'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000001'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000001'  
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000001'  
----------------- GTA SAN 

EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000002'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000002'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000002'  
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000002'  

----------------- GTA IV 

EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000003'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000003'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000003'  
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000003'  
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000003'  

----------------- GTA V  

EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000004'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000004'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000004' 
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000004'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVP','G-00000004' 
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000004'   
EXECUTE spAgregar_CategoriaxJuego 	'C-0SANDBOX','G-00000004' 

--GTA 3
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000005'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000005'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000005'  
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000005' 

--RDR1

EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000006'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000006'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000006'  
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000006' 
--RDR2

EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000007'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000007'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000007'  
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000007' 
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000007'   

--The witcher 1
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000008' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000008' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000008'  

-- || 2
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000009' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000009' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000009'  


-- || 3
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000010' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000010' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000010'  

-- Amogus

EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVP','G-00000011' 
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000011' 

--henry stickmin
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000012'
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000012' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000012' 


----------------- FIFA 18 


EXECUTE spAgregar_CategoriaxJuego 	'C-00FUTBOL','G-00000013'  
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000013'  
EXECUTE spAgregar_CategoriaxJuego 	'C-DEPORTES','G-00000013'  
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000013'  

----------------- FIFA 19 


EXECUTE spAgregar_CategoriaxJuego 	'C-00FUTBOL','G-00000014'  
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000014'  
EXECUTE spAgregar_CategoriaxJuego 	'C-DEPORTES','G-00000014'  
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000014'  

----------------- FIFA 20 


EXECUTE spAgregar_CategoriaxJuego 	'C-00FUTBOL','G-00000015'  
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000015'  
EXECUTE spAgregar_CategoriaxJuego 	'C-DEPORTES','G-00000015'  
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000015'  

---------------- FIFA 21 


EXECUTE spAgregar_CategoriaxJuego 	'C-00FUTBOL','G-00000016'  
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000016'  
EXECUTE spAgregar_CategoriaxJuego 	'C-DEPORTES','G-00000016'  
EXECUTE spAgregar_CategoriaxJuego 	'C-MLTIPLYR','G-00000016'  


--Btf V
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000017'
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000017'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVP','G-00000017'  

--btf4
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000018'
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000018'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVP','G-00000018'  

--RE VILLAGE

EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000019'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000019'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000019'

--re 7
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000020'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000020'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000020'
--re 6
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000021'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000021'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000021'
--re 5
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000022'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000022'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000022'
--re 4
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000023'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000023'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000023'
--re 3
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000024'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000024'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000024'
--re 2
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000025'
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000025'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000025'


--Dying light

EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000026'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000026'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000026' 
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000026' 
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000026'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000026'

--Dying light 2
EXECUTE spAgregar_CategoriaxJuego 	'C-003DGAME','G-00000027'  
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000027'  
EXECUTE spAgregar_CategoriaxJuego 	'C-0SHOOTER','G-00000027' 
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000027' 
EXECUTE spAgregar_CategoriaxJuego 	'C-SZOMBIES' ,'G-00000027'
EXECUTE spAgregar_CategoriaxJuego 	'C-00HORROR' ,'G-00000027'

--Terraria 
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000028'
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000028' 
EXECUTE spAgregar_CategoriaxJuego 	'C-OPENWRLD','G-00000028' 

--Hotline miami
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000029'
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000029' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000029' 

--Hotline miami 2
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000030'
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000030' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000030'

--Gris
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000031'
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000031' 

--Enter the gungeon
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000032'
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000032' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000032' 

--Katana zero
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000033'
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000033' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000033'
EXECUTE spAgregar_CategoriaxJuego 	'C-002DGAME','G-00000033'

--MY friend pedro
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000034'
EXECUTE spAgregar_CategoriaxJuego 	'C-00ACCION','G-00000034' 
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVE','G-00000034'

--Fall guys
EXECUTE spAgregar_CategoriaxJuego 'C-0000IND','G-00000035'
EXECUTE spAgregar_CategoriaxJuego 	'C-00000PVP','G-00000035'
GO


--EXECUTE METODOS DE PAGO 


EXECUTE spAgregar_MetodoPago 'VISA' 
EXECUTE spAgregar_MetodoPago 'MASTERCARD' 
EXECUTE spAgregar_MetodoPago 'MERCADO PAGO' 
EXECUTE spAgregar_MetodoPago 'PAYPAL' 
EXECUTE spAgregar_MetodoPago 'RAPIPAGO' 
EXECUTE spAgregar_MetodoPago 'PAGO FACIL' 

--Por el momento RAPIPAGO y PAGOFACIL estan deshabilitadas
UPDATE Metodos_Pago 
SET Estado_MP = 0
WHERE ID_MP = 'MET5' OR ID_MP = 'MET6'
GO
 

--FECHAS DE IMAGENES ACTUALIZADAS  

UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00001.jpg' Where Codigo_J = 'G-00000001'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00002.jpg' Where Codigo_J = 'G-00000002'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00003.jpg' Where Codigo_J = 'G-00000003'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00004.jpg' Where Codigo_J = 'G-00000004'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00005.jpg' Where Codigo_J = 'G-00000005'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00005.jpg' Where Codigo_J = 'G-00000005'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00006.jpg' Where Codigo_J = 'G-00000006'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00007.jpg' Where Codigo_J = 'G-00000007'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00008.jpg' Where Codigo_J = 'G-00000008'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00009.jpg' Where Codigo_J = 'G-00000009'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00010.jpg' Where Codigo_J = 'G-00000010'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00011.jpg' Where Codigo_J = 'G-00000011'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00012.jpg' Where Codigo_J = 'G-00000012'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00013.jpg' Where Codigo_J = 'G-00000013'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00014.jpg' Where Codigo_J = 'G-00000014'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00015.jpg' Where Codigo_J = 'G-00000015'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00016.jpg' Where Codigo_J = 'G-00000016'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00017.jpg' Where Codigo_J = 'G-00000017'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00018.jpg' Where Codigo_J = 'G-00000018'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00019.jpg' Where Codigo_J = 'G-00000019'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00020.jpg' Where Codigo_J = 'G-00000020' 
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00021.jpg' Where Codigo_J = 'G-00000021' 
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00022.jpg' Where Codigo_J = 'G-00000022'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00023.jpg' Where Codigo_J = 'G-00000023'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00024.jpg' Where Codigo_J = 'G-00000024'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00025.jpg' Where Codigo_J = 'G-00000025'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00026.jpg' Where Codigo_J = 'G-00000026'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00027.jpg' Where Codigo_J = 'G-00000027'  
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00028.jpg' Where Codigo_J = 'G-00000028' 
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00029.jpg' Where Codigo_J = 'G-00000029'
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00030.jpg' Where Codigo_J = 'G-00000030'
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00031.jpg' Where Codigo_J = 'G-00000031'
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00032.jpg' Where Codigo_J = 'G-00000032'
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00033.jpg' Where Codigo_J = 'G-00000033'
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00034.jpg' Where Codigo_J = 'G-00000034'
UPDATE Juegos SET Imagen_J='~/imagenes/IMG-00035.jpg' Where Codigo_J = 'G-00000035'
GO


SELECT  * FROM JUEGOS
--EXECUTE DE ADMINISTRADORES
EXECUTE spAgregar_Administradores 'Goldyr', 'Enzo', 'Bogado', 'enzoefb@hotmail.com', '2552', '1154234239', '19991211' 
EXECUTE spAgregar_Administradores 'Sergioriv', 'Sergio', 'Rivera', 'sergiorive02@gmail.com', 'ser123', '1112341007', '20020114' 
EXECUTE spAgregar_Administradores 'Matyflori', 'Matias', 'Flori', 'matyflori@hotmail.com', 'marroc', '1130246334', '20010601' 
EXECUTE spAgregar_Administradores 'Facu_dread24', 'Facundo', 'Rivas', 'rivasfacundo@hotmail.com', 'contraseña', 'NULL', '20001024' 
EXECUTE spAgregar_Administradores 'Seb-', 'Sebastian', 'Buelga', 'seba@hotmail.com', 'tonikroos', '1123452345', '19980821' 
GO 

--INSERTS USUARIOS 
EXECUTE spAgregar_Usuarios 'creyroa', 'Cristian', 'Vermoa', 'creyroa@gmail.com', '102030', '1164354643','19950515'
EXECUTE spAgregar_Usuarios 'eransto', 'Ernesto', 'Armstrong', 'ermstrong@gmail.com', 'raiden', '1120483950','19971102'
EXECUTE spAgregar_Usuarios 'aponseg99', 'Miguel', 'Aponser', 'migap@gmail.com', 'desktop123', '1153431234','19990906'
EXECUTE spAgregar_Usuarios 'denji', 'Reze', 'Lazhi', 'bomb@gmail.com', 'pochita', '1123462343','20020630'
EXECUTE spAgregar_Usuarios 'gwyn', 'Jose', 'Rodriguez', 'gwyn@gmail.com', 'praisethesun', '1134324334','20011212'
EXECUTE spAgregar_Usuarios 'exonate', 'Maria', 'Costa', 'costamaria@hotmail.com', 'tigrito', '1132434212','19980214'
EXECUTE spAgregar_Usuarios 'nshadow', 'Nicolas', 'Cornejo', 'nshadow@hotmail.com', '423524', '1154641232','19971113'
EXECUTE spAgregar_Usuarios 'gordogamer97', 'Hugo', 'Couto', 'hcou@gmail.com', '2juegos', '1149593754','19970320'
EXECUTE spAgregar_Usuarios 'potemkin', 'Lautaro', 'Figueroa', 'figuelau@hotmail.com', 'passcontra', '1139403434','20000210'
EXECUTE spAgregar_Usuarios 'daokei', 'Nicolas', 'Kei', 'daokei@gmail.com', 'Accesodatos', '1134321234','19990511'
GO


--INSERT METODOSxUSUARIOS 
EXECUTE sp_Agregar_MetodoXUsuario 'MET2','U-00000012','424344115678','nshadow@hotmail.com','132','20210702','23323416','Nicolas Julian','Cornejo', 'Campo 1234','21234','1132344321'
EXECUTE sp_Agregar_MetodoXUsuario 'MET1','U-00000014','455443233233','figuelau@hotmail.com','4234','20210702','21654724','Lautaro','Figueroa', 'Bernabeu 3214','1350','1134243213'
EXECUTE sp_Agregar_MetodoxUsuario 'MET1','U-00000006','432354542332','creyroa@gmail.com','222','20210701','43478655','Cristian','Vermoa', '9 de julio','2600','1132336000'
EXECUTE sp_Agregar_MetodoxUsuario 'MET2','U-00000009','444455551234','bomb@gmail.com','323','20210701','45554342','Reze','Lazhi', 'Urquiza','3200','1164002323'
GO


--INSERT KEYS AAAA-BBBB

EXECUTE spAgregar_Keys 'G-00000001' , 'A1A2-A233'
EXECUTE spAgregar_Keys 'G-00000001' , 'ACAD-F24S'
EXECUTE spAgregar_Keys 'G-00000001' , 'A424-1AS6'
EXECUTE spAgregar_Keys 'G-00000001' , 'A424-1BN6'
EXECUTE spAgregar_Keys 'G-00000001' , 'VZX4-1VB6'
EXECUTE spAgregar_Keys 'G-00000001' , 'NBE4-2346'

EXECUTE spAgregar_Keys 'G-00000002' , 'AA33-SDAD'
EXECUTE spAgregar_Keys 'G-00000002' , 'ADSA-122D'

EXECUTE spAgregar_Keys 'G-00000003' , 'A23C-42AS'
EXECUTE spAgregar_Keys 'G-00000003' , 'AXCF-1223'

EXECUTE spAgregar_Keys 'G-00000005' , 'AA34-12AS'
EXECUTE spAgregar_Keys 'G-00000005' , 'A13A-1VUI'

EXECUTE spAgregar_Keys 'G-00000006' , 'AA2A-1A3S'
EXECUTE spAgregar_Keys 'G-00000006' , 'A14X-2Z4X'

EXECUTE spAgregar_Keys 'G-00000007' , 'AZXA-12SD'
EXECUTE spAgregar_Keys 'G-00000007' , 'AAVA-1140'

EXECUTE spAgregar_Keys 'G-00000008' , '9KRW-1XW9'
EXECUTE spAgregar_Keys 'G-00000008' , 'DWE1-XCWQ'

EXECUTE spAgregar_Keys 'G-00000009' , 'A23S-4122'
EXECUTE spAgregar_Keys 'G-00000009' , 'AAXZ-XDW2'

EXECUTE spAgregar_Keys 'G-00000010' , 'ASX2-1DWE'
EXECUTE spAgregar_Keys 'G-00000010' , 'AZX2-1240'

EXECUTE spAgregar_Keys 'G-00000011' , 'BSD1-12S9'
EXECUTE spAgregar_Keys 'G-00000011' , 'A3VC-1450'

EXECUTE spAgregar_Keys 'G-00000012' , 'AXCV-5239'
EXECUTE spAgregar_Keys 'G-00000012' , 'A42X-11C0'

EXECUTE spAgregar_Keys 'G-00000013' , 'ACJI-SIJD'
EXECUTE spAgregar_Keys 'G-00000013' , 'ACXI-214J'

EXECUTE spAgregar_Keys 'G-00000014' , 'ASIX-SJEW'
EXECUTE spAgregar_Keys 'G-00000014' , 'DKEW-XJJ1'

EXECUTE spAgregar_Keys 'G-00000015' , 'EJRE-02CX'
EXECUTE spAgregar_Keys 'G-00000015' , 'XSA1-OR23'

EXECUTE spAgregar_Keys 'G-00000016' , '2XKK-XK35'
EXECUTE spAgregar_Keys 'G-00000016' , 'XJD1-QP23'

EXECUTE spAgregar_Keys 'G-00000017' , '3XXZ-32XW'
EXECUTE spAgregar_Keys 'G-00000017' , 'SDX2-ASDG'

EXECUTE spAgregar_Keys 'G-00000018' , 'EWQE-ZXVA'
EXECUTE spAgregar_Keys 'G-00000018' , 'TEWR-SDCX'

EXECUTE spAgregar_Keys 'G-00000019' , 'DS45-12X9'
EXECUTE spAgregar_Keys 'G-00000019' , '321Z-ZSW1'

EXECUTE spAgregar_Keys 'G-00000020' , 'CE2A-1SDX'
EXECUTE spAgregar_Keys 'G-00000020' , 'VNHY-CXA1'

EXECUTE spAgregar_Keys 'G-00000021' , 'ABJT-1539'
EXECUTE spAgregar_Keys 'G-00000021' , 'AJBN-1740'

EXECUTE spAgregar_Keys 'G-00000022' , 'AABV-1239'
EXECUTE spAgregar_Keys 'G-00000022' , 'ANVC-1IU0'

EXECUTE spAgregar_Keys 'G-00000023' , 'AACA-1YU9'
EXECUTE spAgregar_Keys 'G-00000023' , 'AJBA-ER40'

EXECUTE spAgregar_Keys 'G-00000024' , 'AIYA-16C9'
EXECUTE spAgregar_Keys 'G-00000024' , 'NBVA-IY30'

EXECUTE spAgregar_Keys 'G-00000025' , 'JHGR-1UY4'
EXECUTE spAgregar_Keys 'G-00000025' , 'Y93R-NBF0'

EXECUTE spAgregar_Keys 'G-00000027' , 'F91D-B9GK'
EXECUTE spAgregar_Keys 'G-00000027' , 'VJ35-S91K'

EXECUTE spAgregar_Keys 'G-00000028' , 'SD32-VD29'
EXECUTE spAgregar_Keys 'G-00000028' , 'AAA1-13W0'

EXECUTE spAgregar_Keys 'G-00000029' , 'XS21-3139'
EXECUTE spAgregar_Keys 'G-00000029' , 'XC23-1260'

EXECUTE spAgregar_Keys 'G-00000030' , 'E234-1239'
EXECUTE spAgregar_Keys 'G-00000030' , 'SDW5-1750'

EXECUTE spAgregar_Keys 'G-00000031' , 'AABB-1329'
EXECUTE spAgregar_Keys 'G-00000031' , 'ACB2-1654'

EXECUTE spAgregar_Keys 'G-00000032' , 'AAAA-121D'
EXECUTE spAgregar_Keys 'G-00000032' , 'VCMB-1ZX2'

EXECUTE spAgregar_Keys 'G-00000033' , 'AAFG-1JG4'
EXECUTE spAgregar_Keys 'G-00000033' , 'AMBV-124F'

EXECUTE spAgregar_Keys 'G-00000034' , 'A75A-CXV3'
EXECUTE spAgregar_Keys 'G-00000034' , '246A-L12R'

EXECUTE spAgregar_Keys 'G-00000035' , '54AA-V4KD'
EXECUTE spAgregar_Keys 'G-00000035' , 'AA23-21JC'
GO


--INSERT VENTA Y SUS DETALLES // Si o si la venta tiene que estar seguida de sus detalles
--@id_usuario CHAR(10), @id_metodo CHAR(10), @fecha DATE


EXECUTE sp_Agregar_Ventas 'U-00000012','424344115678','20210702'
EXECUTE sp_Agregar_DetalleVentas 'G-00000001'
EXECUTE sp_Agregar_DetalleVentas 'G-00000001'

EXECUTE sp_Agregar_Ventas 'U-00000014','455443233233','20210701'
EXECUTE sp_Agregar_DetalleVentas 'G-00000032'
EXECUTE sp_Agregar_DetalleVentas 'G-00000005'

EXECUTE sp_Agregar_Ventas 'U-00000006','432354542332','20210701'
EXECUTE sp_Agregar_DetalleVentas 'G-00000001'
EXECUTE sp_Agregar_DetalleVentas 'G-00000035'
GO


