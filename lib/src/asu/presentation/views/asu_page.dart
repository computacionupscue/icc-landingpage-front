import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/informacion_asu.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AsuPage extends StatelessWidget {
  const AsuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return re.width < 1000 ? _MobileModel(re: re) : _DesktopModel(re: re);
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: re.hp(7),
                //color: AppColors.primaryYellow,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: re.hp(5)),
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.logoRecicla,
                        width: re.hp(30), // Ancho de la imagen
                        height: re.hp(30), // Alto de la imagen
                        fit: BoxFit
                            .cover, // Puedes ajustar esto según tus necesidades
                      ),
                    ),
                  ),
                  InformacionAsu(
                    re: re,
                    nombre: "ASU RECICLA UPS",
                    descripcion:
                        'El grupo reciclaje informático nace en el año de 2012 como una necesidad de investigación en la cátedra de Arquitectura de computadores sobre el uso inadecuado de la tecnología bajo la tendencia de obsolescencia programada. Es así como se empieza a analizar componentes reutilizables y armar computadores en base a donaciones entregadas principalmente por la Universidad.\n\nEl primer proyecto fue aplicado en Loja con el primer coordinador del grupo, ahora Ing. Juan Carlos Riofrío, posteriormente en las coordinaciones del Ing. Diego Lima, el Ing. Rommel Paredes, Ing. Luis Lima, y Ing. Alfredo Llanes varios proyectos de reciclaje fueron entregados en escuelas rurales de diferentes cantones de la provincia del Azuay, así como también charlas de sensibilización en Zaruma y UPS Guayaquil.\n\nCon la reutilización adecuada de computadoras conjuntamente con el uso óptimo de software libre hemos buscado satisfacer necesidades de equipos y mantenimiento computacional en escuelas y sectores rurales y/o marginales de la provincia del Azuay.\n\nA lo largo de este tiempo se ha logrado que otros jóvenes se involucren en el tema, generando un efecto multiplicador en el uso adecuado de la tecnología. Actualmente tenemos como 6to coordinador a la Estudiante Marcela Catalina Zhagüi.',
                    mision:
                        'Recicla UPS es un grupo académico orientado a la propuesta de Reciclaje Informático, uso de Software Libre, preservación del ambiente, Investigación y Desarrollo de Nuevas tecnologías en base a computadoras obsoletas, siempre buscando el Bienestar de la Sociedad y el Desarrollo académico, profesional y competencias de sus Integrantes en base a la formación humana y académica con excelencia salesiana.',
                    vision:
                        'Ser un referente de trabajo en equipo, voluntariado, investigación e Innovación que apoye a la ciencia solidaria y a la tecnología noble, con un sentido crítico, analítico y desarrollando competencias profesionales y personales de sus Integrantes al puro estilo Salesiano, capaces de entender la responsabilidad social que tenemos con el planeta y nuestro entorno más cercano desde la profesión.',
                    actividades: [
                      Text(
                        "Talleres",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: re.hp(150),
                        height: re.hp(20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            VinietaText(
                                '     Taller de mantenimiento preventivo, correctivo hardware y software.'),
                            VinietaText(
                                '     Taller de reutilización de componentes.'),
                            VinietaText(
                                '     Taller sobre el manejo de Sistema operativo Linux.'),
                            VinietaText('     Taller de ensamblaje.'),
                            VinietaText(
                                '     Taller de adaptaciones teclado, mouse para uso en juegos u otros.'),
                            VinietaText(
                                '     Talleres de servidores Media Wiki (código abierto)'),
                          ],
                        ),
                      ),
                      Text(
                        "Exposiciones",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: re.hp(150),
                        height: re.hp(14),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            VinietaText(
                                '     Expo Reciclaje 2018 organizado por la EMAC'),
                            VinietaText(
                                '     Exposición de proyectos de fin de Catedra Arquitectura de computadores 2016, 2017, 2018, 2019'),
                            VinietaText(
                                '     Exposiciones para alumnos nuevos de la carrera.'),
                            VinietaText(
                                '     Exposiciones de prototipos para videos juegos u otros programas'),
                          ],
                        ),
                      ),
                      Text(
                        "Asocianismo",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: re.hp(150),
                        height: re.hp(11),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            VinietaText(
                                '     Misiones en varias partes del país.'),
                            VinietaText(
                                '     Entrega de computadores en escuelas.'),
                            VinietaText(
                                '     Mantenimiento y soporte técnico en computadoras.'),
                          ],
                        ),
                      ),
                      Text(
                        "Concursos ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: re.hp(150),
                        height: re.hp(8),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            VinietaText('     Concurso de programación'),
                            VinietaText('     Concurso de aviones de papel.'),
                          ],
                        ),
                      ),
                      Text(
                        "Multimedia ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: re.hp(150),
                        height: re.hp(14),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            VinietaText(
                                '     Videos de manejo de sistema operativo Linux Ubuntu.'),
                            VinietaText(
                                '     Videos de concientización de reciclaje informático'),
                            VinietaText(
                                '     Videos de ensamblaje de computadoras.'),
                            VinietaText(
                                '     Videos de partes y piezas del computador.'),
                          ],
                        ),
                      ),
                    ],
                    animador: [
                      Text(
                        "Vladimir Espartaco Robles Bykbaev",
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Docente",
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Correo institucional: vrobles@ups.edu.ec",
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                    ],
                    coordinador: [
                      Text(
                        "Paul Sebastian Idrovo Berrezueta",
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Estudiante de la carrera de Electrónica y Telecomunicaciones ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Correo institucional: pidrovob@est.ups.edu.ec",
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.black, // Cambiar el color de la línea
                thickness: 2, // Cambiar el grosor de la línea
                indent: 60, // Cambiar el espacio izquierdo
                endIndent: 60, // Cambiar el espacio derecho
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                      child: Column(
                        children: [
                          InformacionAsu(
                            re: re,
                            nombre: "ASU SOFTWARE LIBRE",
                            descripcion:
                                "Estudiantes de diferentes ciclos de la carrera de Ingeniería de Sistemas tuvieron la iniciativa de crear una comunidad en la cual se puede elaborar herramientas de software libre y poner en marcha la ejecución de diferentes proyectos dentro de la UPS como cursos, charlas, talleres. La participación es abierta tanto a estudiantes como profesores de todas las carreras, público en general siendo el único requisito tener ganas de participar y colaborar en una forma ética y moral en la ciencia y tecnología.",
                            mision:
                                "Dar a conocer y establecer la filosofía y los valores del software libre en la UPS dotando de herramientas en materia de software libre a las diferentes carreras.",
                            vision:
                                "Ser el punto de encuentro y coordinación de software libre para estudiantes y profesores.",
                            actividades: const [Text("")],
                            animador: [
                              Text(
                                "Ing. Luis González",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Docente",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Correo institucional: lgonzalez@ups.edu.ec",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Teléfono institucional: (+593) 984785045  ext. 1278",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                            ],
                            coordinador: [
                              Text(
                                "Miguel Angel Samaniego Calle",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Estudiante de la carrera de Computación",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Correo institucional: msamaniegoc1@est.ups.edu.ec",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.only(top: re.hp(10)),
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.logoSoftwareLibre,
                        width: re.hp(30), // Ancho de la imagen
                        height: re.hp(30), // Alto de la imagen
                        fit: BoxFit
                            .cover, // Puedes ajustar esto según tus necesidades
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black, // Cambiar el color de la línea
                thickness: 2, // Cambiar el grosor de la línea
                indent: 60, // Cambiar el espacio izquierdo
                endIndent: 60, // Cambiar el espacio derecho
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: re.hp(10)),
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.logoIEEE,
                        width: re.hp(30), // Ancho de la imagen
                        height: re.hp(30), // Alto de la imagen
                        fit: BoxFit
                            .cover, // Puedes ajustar esto según tus necesidades
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                      child: Column(
                        children: [
                          InformacionAsu(
                            re: re,
                            nombre: "ASU IEEE UPS",
                            descripcion:
                                "El Instituto de Ingenieros Eléctricos y Electrónicos (IEEE) es la asociación técnica profesional, internacional y sin ánimo de lucro más grande del mundo, agrupa a más de 425000 miembros entre ingenieros, científicos, tecnólogos, universitarios y profesionales distribuidos en más de 160 países, cuyo objetivo principal de sus voluntarios es hacer cumplir el lema de la organización Crear tecnología en beneficio de la humanidad, promoviendo la creatividad, el desarrollo y la integración, compartir y aplicar los avances en las tecnologías de la información, electrónica y ciencias en general para beneficio de la humanidad.",
                            mision:
                                "Fomentar la innovación tecnológica y la excelencia en beneficio de la humanidad.",
                            vision:
                                "Nuestra visión se alinea a la de la Universidad Politécnica Salesiana, en lo referente a continuar promoviendo el desarrollo cultural, la investigación sobre nuestra interculturalidad y la responsabilidad social universitaria.",
                            actividades: [
                              Text(
                                "Sociales",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Eventos que integran a la comunidad universitaria en aspectos no tecnológicos como Concursos de fotografía, Eventos de inclusión social, Reuniones Anuales de ramas del Ecuador, Integración de mujeres en la ingeniería, entre otros.",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: re.hp(2),
                              ),
                              Text(
                                "Académicos",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Proyectos que buscan integrar a los estudiantes en eventos académicos como Simposios, Charlas magistrales, Talleres de formación, Conferencias y Cursos de diversos interereses.",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: re.hp(2),
                              ),
                              Text(
                                "Administrativos",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Reuniones para plantear proyectos y búsqueda de financiamiento para su ejecución por parte de auspiciantes y entidades locales que apoyen al desarrollo de la tecnología.",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                            animador: [
                              Text(
                                "Patricio Fernando Urgilés Ortiz",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Docente",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Correo institucional: furgiles@ups.edu.ec",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                            ],
                            coordinador: [
                              Text(
                                "Samantha Jislayde Márquez Armijos",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Estudiante de la carrera de Telecomunicaciones",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                "Correo institucional: smarqueza@est.ups.edu.ec",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: AppColors.primaryYellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: double.maxFinite,
                        // color: AppColors.primaryBlueMaterial,
                        padding: EdgeInsets.only(top: re.hp(7)),
                        child: Column(
                          children: [
                            Text("ASU RECICLA UPS",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.primaryBlue)),
                            Container(
                              padding: EdgeInsets.only(top: re.hp(5)),
                              child: ClipOval(
                                child: Image.asset(
                                  AppAssets.salesianosLogo,
                                  width: re.hp(30), // Ancho de la imagen
                                  height: re.hp(30), // Alto de la imagen
                                  fit: BoxFit
                                      .cover, // Puedes ajustar esto según tus necesidades
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: re.hp(5), bottom: re.hp(7)),
                                width: re.hp(60),
                                height: re.hp(80),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors
                                        .primaryBlue, // Color del borde
                                    width: 2.0, // Ancho del borde
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "INFORMACION",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(color: AppColors.primaryBlue),
                                    textAlign: TextAlign.center,
                                  ),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                color: AppColors.primaryBlueMaterial,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                        child: Column(
                          children: [
                            Text("ASU SOFTWARE LIBRE",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: Colors.white)),
                            Container(
                              padding: EdgeInsets.only(top: re.hp(5)),
                              child: ClipOval(
                                child: Image.asset(
                                  AppAssets.salesianosLogo,
                                  width: re.hp(30), // Ancho de la imagen
                                  height: re.hp(30), // Alto de la imagen
                                  fit: BoxFit
                                      .cover, // Puedes ajustar esto según tus necesidades
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: re.hp(5)),
                                width: re.hp(60),
                                height: re.hp(80),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white, // Color del borde
                                    width: 2.0, // Ancho del borde
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "INFORMACION",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                color: AppColors.primaryYellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                        child: Column(
                          children: [
                            Text("ASU IEEE UPS",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.primaryBlue)),
                            Container(
                              padding: EdgeInsets.only(top: re.hp(5)),
                              child: ClipOval(
                                child: Image.asset(
                                  AppAssets.salesianosLogo,
                                  width: re.hp(30), // Ancho de la imagen
                                  height: re.hp(30), // Alto de la imagen
                                  fit: BoxFit
                                      .cover, // Puedes ajustar esto según tus necesidades
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: re.hp(5)),
                                width: re.hp(60),
                                height: re.hp(80),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors
                                        .primaryBlue, // Color del borde
                                    width: 2.0, // Ancho del borde
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "INFORMACION",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(color: AppColors.primaryBlue),
                                    textAlign: TextAlign.center,
                                  ),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
