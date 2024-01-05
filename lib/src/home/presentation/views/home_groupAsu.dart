import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/src/home/presentation/bloc/home/home_bloc.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';

class GroupAsu extends StatelessWidget {
  const GroupAsu({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 600)
            ? _DesktopModel(re: re)
            : _MobileModel(re: re);
      },
    );
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
      padding: const EdgeInsets.only(top: 50),
      height: re.hp(50),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.logoRecicla,
                  width: re.hp(25), // Ancho de la imagen
                  height: re.hp(25), // Alto de la imagen
                  fit:
                      BoxFit.cover, // Puedes ajustar esto según tus necesidades
                ),
              ),
              GestureDetector(
                onTap: () {
                  final homebloc = context.read<HomeBloc>();
                  homebloc
                      .add(const GetDataEvent(valor: 'DEsde GestureDEtector'));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                    },
                    child: Text("ASU\nRECICLA\nUPS",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: AppColors.primaryBlue,
                                ),
                        textAlign: TextAlign.center),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.logoSoftwareLibre,
                  width: re.hp(25), // Ancho de la imagen
                  height: re.hp(25), // Alto de la imagen
                  fit:
                      BoxFit.cover, // Puedes ajustar esto según tus necesidades
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                  },
                  child: Text("ASU\nSOFTWARE\nLIBRE",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.primaryBlue,
                              ),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.logoIEEE,
                  width: re.hp(25), // Ancho de la imagen
                  height: re.hp(25), // Alto de la imagen
                  fit:
                      BoxFit.cover, // Puedes ajustar esto según tus necesidades
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                  },
                  child: Text("ASU\nIEEE\nUPS",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.primaryBlue,
                              ),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
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
    return Container(
      height: re.hp(140),
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.logoRecicla,
                  width: re.hp(25), // Ancho de la imagen
                  height: re.hp(25), // Alto de la imagen
                  fit:
                      BoxFit.cover, // Puedes ajustar esto según tus necesidades
                ),
              ),
              GestureDetector(
                onTap: () {
                  final homebloc = context.read<HomeBloc>();
                  homebloc
                      .add(const GetDataEvent(valor: 'DEsde GestureDEtector'));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                    },
                    child: Text("ASU\nRECICLA\nUPS",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: AppColors.primaryBlue,
                                ),
                        textAlign: TextAlign.center),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.logoSoftwareLibre,
                  width: re.hp(25), // Ancho de la imagen
                  height: re.hp(25), // Alto de la imagen
                  fit:
                      BoxFit.cover, // Puedes ajustar esto según tus necesidades
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                  },
                  child: Text("ASU\nSOFTWARE\nLIBRE",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.primaryBlue,
                              ),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppAssets.logoIEEE,
                  width: re.hp(25), // Ancho de la imagen
                  height: re.hp(25), // Alto de la imagen
                  fit:
                      BoxFit.cover, // Puedes ajustar esto según tus necesidades
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                  },
                  child: Text("ASU\nIEEE\nUPS",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.primaryBlue,
                              ),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
