# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin User
User.create(email: "ccesequipo@gmail.com",  password: "123456")
Estefan.create(cedula: '0000000000', nombre: 'cces', apellido: 'equipo', nacimento: '2018-11-01', cargo: 'Admin', email: 'ccesequipo@gmail.com', cel: '+57 0000000000', sexo: 'O', creador: 1, modificador: 1)

# Municipios
lista_municipios = [
  ['Sabaneta','1','https://www.sabaneta.gov.co/'],
  ['Medellin','ESP','https://www.medellin.gov.co'],
  ['Bello','1','http://www.bello.gov.co/'],
  ['Itagui','1','https://www.itagui.gov.co/'],
  ['Envigado','1','https://www.envigado.gov.co/'],
  ['Caldas','3','https://www.caldasantioquia.gov.co/'],
  ['Copacabana','3','http://www.copacabana.gov.co'],
  ['La Estrella','2','http://www.laestrella.gov.co'],
  ['Girardota','3','http://www.girardota.gov.co'],
  ['Barbosa','4','http://www.barbosa.gov.co']
]
lista_municipios.each do |nombre, categoria, web|
  Municipio.create(nombre: nombre, categoria: categoria, departamento: 'Antioquia', modificador: 1, creador: 1, web: web)
end

# Zonas de Sabaneta
lista_zonas = [
  ['Sabaneta','https://www.google.com/maps/place/Sabaneta,+Antioquia/@6.1505797,-75.6255962,15z/data=!3m1!4b1!4m5!3m4!1s0x8e4683deac15e213:0xd7d66a6bbf97ed8c!8m2!3d6.150559!4d-75.61682'],
  ['Aliados del Sur','https://www.google.com/maps/search/aliados+del+sur,+sabaneta/@6.1533375,-75.615185,18z'],
  ['Ancón Sur','https://www.google.com/maps/search/Anc%C3%B3n+Sur,+sabaneta/@6.1533614,-75.6228696,15z/data=!3m1!4b1'],
  ['Betania','https://www.google.com/maps/place/Betania+Store/@6.1498709,-75.6172533,17.75z/data=!4m5!3m4!1s0x8e4683de91c03a17:0x9c633330d6fa3a96!8m2!3d6.1498562!4d-75.6159855'],
  ['Calle del Banco','https://www.google.com/maps/place/Parque+infantil+Calle+del+Banco/@6.1537111,-75.6166169,17.5z/data=!4m5!3m4!1s0x8e4683d97da6b1c3:0xd292f0d7fb8c0021!8m2!3d6.1537417!4d-75.6151283'],
  ['Calle Larga','https://www.google.com/maps/search/Calle+Larga,+sabaneta/@6.1537255,-75.6194611,16z/data=!3m1!4b1'],
  ['El Carmelo II','https://www.google.com/maps/search/El+Carmelo+II,+sabaneta/@6.1507911,-75.6142919,18z/data=!3m1!4b1'],
  ['Entreamigos','https://www.google.com/maps/search/Entreamigos,+sabaneta/@6.1525199,-75.6207993,17z/data=!3m1!4b1'],
  ['Holanda','https://www.google.com/maps/search/Holanda,+sabaneta/@6.1508879,-75.6197586,17z'],
  ['La Barquereña','https://www.google.com/maps/place/Casa+de+la+cultura+La+Barquere%C3%B1a/@6.1501798,-75.6148192,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683dc5df264c5:0x3d0bd53c20190022!8m2!3d6.1501745!4d-75.6126251'],
  ['La Florida','https://www.google.com/maps/place/La+Florida+Sabaneta/@6.1538853,-75.6103879,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683c4d910a9e9:0xe2a7cc30b39e73b4!8m2!3d6.15388!4d-75.6081938'],
  ['Lagos de la Doctora','https://www.google.com/maps/place/Lagos+Mi+Ciudad/@6.1539119,-75.6169808,15z/data=!4m8!1m2!2m1!1sLagos+de+la+Doctora,+sabaneta!3m4!1s0x8e4683e7f490e031:0x2d327c5bc9036f1f!8m2!3d6.1451439!4d-75.6113045'],
  ['Las Casitas','https://www.google.com/maps/place/Las+Casitas,+Envigado,+Antioquia/@6.1615742,-75.6031332,18z/data=!3m1!4b1!4m5!3m4!1s0x8e4683c8c0eac511:0x41def88ddf76845c!8m2!3d6.1613319!4d-75.6022585'],
  ['Los Alcázares','https://www.google.com/maps/place/Colegio+Aspaen+Gimnasio+Los+Alc%C3%A1zares/@6.1518677,-75.6117275,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683db55602349:0xeff792d042b1bb31!8m2!3d6.1518624!4d-75.6095334'],
  ['Los Arias','https://www.google.com/maps/place/Baberia+Bozo+Alejo+Los+Arias/@6.1568125,-75.6049212,18.75z/data=!4m5!3m4!1s0x8e4683cf5b0f03d9:0x937d3cb16619db8!8m2!3d6.1570661!4d-75.604315'],
  ['Manuel Restrepo','https://www.google.com/maps/place/Jos%C3%A9+Manuel+Restrepo+Velez-JOMAR/@6.171598,-75.5935202,17z/data=!3m1!4b1!4m5!3m4!1s0x8e46824c021f47ad:0x56d265610accd66a!8m2!3d6.1715927!4d-75.5913261'],
  ['María Auxiliadora','https://www.google.com/maps/place/Cancha+De+Futbol+Maria+Auxiliadora/@6.1488165,-75.6022263,16.75z/data=!4m8!1m2!2m1!1sMar%C3%ADa+Auxiliadora,+sabaneta!3m4!1s0x8e4683c0f3bd3f85:0x31c4945db0a63bce!8m2!3d6.1490881!4d-75.5992171'],
  ['Nuestra Señora de los Dolores','https://www.google.com/maps/place/Nuestra+Se%C3%B1ora+de+Los+Dolores/@6.1502337,-75.6254728,17z/data=!3m1!4b1!4m5!3m4!1s0x8e468161a41406ad:0xaad728c63be75297!8m2!3d6.1502284!4d-75.6232787'],
  ['Paso Ancho','https://www.google.com/maps/search/Paso+Ancho,+Sabaneta,+Antioquia/@6.1500224,-75.6267704,15z'],
  ['Playas de María','https://www.google.com/maps/place/CAFETERIA+PLAYAS+DE+MAR%C3%8DA/@6.1522579,-75.6211033,16z/data=!4m8!1m2!2m1!1sPlayas+de+Mar%C3%ADa,+Sabaneta,+Antioquia!3m4!1s0x8e4683d9957c5669:0x73b3de32fda1eeae!8m2!3d6.1554647!4d-75.6164311'],
  ['Prados de Sabaneta','https://www.google.com/maps/place/Prados+De+Sabaneta/@6.1465441,-75.624558,17z/data=!3m1!4b1!4m5!3m4!1s0x8e46815fde485c53:0xa06bb8b08a68c427!8m2!3d6.1465388!4d-75.6223639'],
  ['Promisión','https://www.google.com/maps/search/Promisi%C3%B3n+Sabaneta,+Antioquia/@6.1465707,-75.6311509,15z/data=!3m1!4b1'],
  ['Restrepo Naranjo','https://www.google.com/maps/place/Parque+Infantil+Restrepo+Naranjo/@6.154006,-75.6133824,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683dae2a8317f:0xd0c9a0819c8f4844!8m2!3d6.1540007!4d-75.6111883'],
  ['Sabaneta Real','https://www.google.com/maps/search/Sabaneta+Real,+Sabaneta,+Antioquia/@6.1540326,-75.6199753,15z/data=!3m1!4b1'],
  ['San Joaquín','https://www.google.com/maps/place/San+Joaquin,+Sabaneta,+Antioquia/@6.150982,-75.61457,18z/data=!3m1!4b1!4m5!3m4!1s0x8e4683dc72b96947:0xe5cb8f048fd8123f!8m2!3d6.1513173!4d-75.6131707'],
  ['Santa Ana','https://www.google.com/maps/place/Parroquia+Santa+Ana+-+Sabaneta/@6.1513166,-75.6174858,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683dea83817bb:0x2e5da461b2117f8a!8m2!3d6.1513113!4d-75.6152917'],
  ['Tres Esquinas','https://www.google.com/maps/search/Tres+Esquinas,+Sabaneta,+Antioquia/@6.1513857,-75.6241216,15z/data=!3m1!4b1'],
  ['Vegas de la Doctora','https://www.google.com/maps/place/La+Doctora+Restaurante+-+Parrilla+-+Bar/@6.151724,-75.6183286,16z/data=!4m8!1m2!2m1!1sVegas+de+la+Doctora,+Sabaneta,+Antioquia!3m4!1s0x0:0xbe51ed1dbe1e2e19!8m2!3d6.1456977!4d-75.6167145'],
  ['Vegas de San José','https://www.google.com/maps/search/Vegas+de+San+Jos%C3%A9,+Sabaneta,+Antioquia/@6.1462567,-75.6221038,17z'],
  ['Villas del Carmen','https://www.google.com/maps/search/Villas+del+Carmen,+Sabaneta,+Antioquia/@6.1564442,-75.6064323,18z/data=!3m1!4b1'],
  ['Virgen del Carmen','https://www.google.com/maps/search/Virgen+del+Carmen,+Sabaneta,+Antioquia/@6.1564495,-75.6064376,18z/data=!3m1!4b1'],
  ['San Rafael','https://www.google.com/maps/search/San+Rafael,+Sabaneta,+Antioquia/@6.1563881,-75.6143368,15z'],
  ['Cañaveralejo','https://www.google.com/maps/search/Ca%C3%B1averalejo,+Sabaneta,+Antioquia/@6.140968,-75.625529,16z/data=!3m1!4b1'],
  ['La Doctora','https://www.google.com/maps/place/La+Doctora+Restaurante+-+Parrilla+-+Bar/@6.1457033,-75.6189091,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683e0bf690751:0xbe51ed1dbe1e2e19!8m2!3d6.145698!4d-75.616715'],
  ['Las Lomitas','https://www.google.com/maps/place/Parqueadero+Las+Lomitas/@6.1518333,-75.6138501,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683db7c3c4e2b:0x6abab9cc3f1fdc1f!8m2!3d6.151828!4d-75.611656'],
  ['Pan de Azúcar','https://www.google.com/maps/place/Pan+de+Azucar,+Sabaneta,+Antioquia/@6.1397839,-75.632348,17z/data=!3m1!4b1!4m5!3m4!1s0x8e46815b056b51fd:0x5c4e0946ada86340!8m2!3d6.139778!4d-75.630154'],
  ['San José','https://www.google.com/maps/place/Parqueadero+Quintas+De+San+Jos%C3%A9,+Sabaneta,+Antioquia/@6.1450341,-75.6206484,17z/data=!3m1!4b1!4m5!3m4!1s0x8e4683e05b1d14e1:0x58abe3dbdb0f0b4b!8m2!3d6.1450288!4d-75.6184543']
]

lista_zonas.each do |nombre, map|
  Zona.create(nombre: nombre, municipio: 1, modificador:1, creador:1, lmap: map)
end

# Puntos de votacion
lista_puntosv = [
  ['I.E. RAFAEL J. MEJIA','KR 45 # 77 C SUR - 47',25,4562,4834],
  ['COL PADRE RAMON ARCILA R',	'CALLE 70 SUR No 46-80',	18,	4155,	2543],
  ['COL EL CARMELO PRIMARIA',	'CLL 70 SUR No 43B-32',	22,	4184,	3952],
  ['I.E. PRIMITIVO LEAL LA DOCTORA',	'CLL 75 SUR # 33 53',	17,	3478,	2773],
  ['IE JOSE FELIX DE RESTREPO',	'CRA 46B No 76SUR -17',	29,	5756,	5149],
  ['IE CONCEJO DE SABANETA',	',CRA 42 No 61 SUR -12',	21,	4462,	3299],
  ['CTRO PARA EL ADULTO MAYOR CAITES',	'CARRERA 46B No 77 SUR-90',	22,	4667,	3482],
  ['BIBLIOTECA MUNICIPAL',	'CRA 45 No 72 SUR -25',	0,	0,	0],
  ['IE MARIA MEDIADORA',		'CLL 50 SUR No 43A-80',	19,	4011,	2911],
  ['PLESBITERO ANTONIO BAENA SALAZAR',	'CLL 82 SUR No 32-68',	0,	0,	0],
  ['CASA DE LA CULTURA LA BARQUEREÑA',	'CLL 68 SUR # 42 - 40',	14,	1825,	3206],
  ['PARQUE DE LOS 4 ELEMENTOS',	'CLL 66 SUR No 43C-50',	0,	0,	0],
  ['GIMNASIO CAMPESTRE LOS ALCAZARES',	'CLL 63 SUR No 41-05',	7,	1182,	1383]
]

lista_puntosv.each do |nombre,direccion,nromesas,hombres,mujeres|
  PuntoV.create(nombre: nombre, zona: 1,creador:1,modificador:1,direccion: direccion,nromesas: nromesas, mujeres: mujeres,hombres: hombres)
end
