import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hovering/hovering.dart';

class Informacion extends StatelessWidget {
  const Informacion({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    // return LayoutBuilder(
    //   builder: (_, constraints) {
    //     return (constraints.maxWidth > 950)
    //         ? _DesktopModel(re: re)
    //         : _MobileModel(re: re);
    //   },
    // )<
    return re.width < 1100 ? _MobileModel(re: re) : _DesktopModel(re: re);
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(children: [
        Container(
            padding: const EdgeInsets.only(bottom: 30),
            height: re.hp(10),
            width: double.maxFinite,
            child: Center(
                child: Text("Información de la carrera",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)))),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.inicioInscripcion,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Inicio de inscripciones",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("04/12/2023",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.finalizacionInscripcion,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Finalizacion de inscripciones",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("30/04/2024",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.inicioMatriculas,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Inicio de matriculas",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("20/11/2023",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.finalizacionMatriculas,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Finalizacion de matriculas",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("25/03/2024",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(height: re.hp(5)),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.titulo,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Título a obtener",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("Ingeniero/a en Ciencias\nde la Computación",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.modalidad,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Modalidad",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("Presencial",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.duracion,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Duración",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("8 semestres",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.descargas,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Descargas",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          GestureDetector(
                            onTap: () {
                              GoRouter.of(context).go(PAGES.malla.pagePath);
                            },
                            child: HoverWidget(
                              hoverChild: Text('Malla curricular',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: const Color.fromARGB(
                                            255, 0, 64, 182),
                                        fontSize: 15,
                                        decoration: TextDecoration.underline,
                                      )),
                              onHover: (PointerEnterEvent event) {},
                              child: Text('Malla curricular',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: AppColors.primaryBlue,
                                        fontSize: 15,
                                      )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ]),
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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(children: [
        Container(
            padding: const EdgeInsets.only(bottom: 30),
            height: re.hp(10),
            width: double.maxFinite,
            child: Center(
                child: Text("Información de la carrera",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)))),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.inicioInscripcion,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Inicio de inscripciones",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("04/12/2023",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.finalizacionInscripcion,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Finalizacion de inscripciones",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("30/04/2024",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(height: re.hp(5)),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.inicioMatriculas,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Inicio de matriculas",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("20/11/2023",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.finalizacionMatriculas,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Finalizacion de matriculas",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("25/03/2024",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(height: re.hp(5)),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.titulo,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Título a obtener",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("Ingeniero/a en Ciencias\nde la Computación",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.modalidad,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Modalidad",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("Presencial",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(height: re.hp(5)),
        SizedBox(
            height: re.hp(10),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.duracion,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Duración",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text("8 semestres",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.primaryBlue,
                                    fontSize: 15,
                                  )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: re.hp(37),
                  child: Row(
                    children: [
                      Image.asset(
                        height: re.hp(9),
                        width: re.hp(9),
                        AppAssets.descargas,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Descargas",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                          GestureDetector(
                            onTap: () {
                              GoRouter.of(context).go(PAGES.malla.pagePath);
                            },
                            child: HoverWidget(
                              hoverChild: Text('Malla curricular',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: const Color.fromARGB(
                                            255, 0, 64, 182),
                                        fontSize: 15,
                                        decoration: TextDecoration.underline,
                                      )),
                              onHover: (PointerEnterEvent event) {},
                              child: Text('Malla curricular',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: AppColors.primaryBlue,
                                        fontSize: 15,
                                      )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ]),
    );
  }
}
