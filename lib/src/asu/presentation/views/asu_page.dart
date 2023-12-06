import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
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
                color: AppColors.primaryYellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: re.hp(10)),
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
                        // color: AppColors.primaryBlueMaterial,
                        padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                        child: Column(
                          children: [
                            Text("ASU RECICLA UPS",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.primaryBlue)),
                            Container(
                                margin: EdgeInsets.only(top: re.hp(5)),
                                width: re.hp(100),
                                height: re.hp(30),
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
                                margin: EdgeInsets.only(top: re.hp(5)),
                                width: re.hp(100),
                                height: re.hp(30),
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
                    Container(
                      padding: EdgeInsets.only(top: re.hp(10)),
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
                  ],
                ),
              ),
              Container(
                color: AppColors.primaryYellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: re.hp(10)),
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
                        padding: EdgeInsets.symmetric(vertical: re.hp(7)),
                        child: Column(
                          children: [
                            Text("ASU IEEE UPS",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.primaryBlue)),
                            Container(
                                margin: EdgeInsets.only(top: re.hp(5)),
                                width: re.hp(100),
                                height: re.hp(30),
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
