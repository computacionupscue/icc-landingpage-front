import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';

import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/home/presentation/bloc/home/home_bloc.dart';

import 'package:landing_page/src/shared/responsive.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: re.hp(5),
            width: double.maxFinite,
            color: AppColors.primaryBlue,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    final homebloc = context.read<HomeBloc>();
                    homebloc.add(const GetDataEvent(valor: 'Modo claro'));
                  },
                  style: TextButton.styleFrom(
                      foregroundColor:
                          Colors.white, // Color del texto del botón
                      textStyle: Theme.of(context).textTheme.bodyMedium),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state is HomeInitial) {
                        return const Text(
                          "Modo Oscuro",
                        );
                      } else if (state is HomeLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return Text(
                        (state as HomeLoaded).valor,
                      );
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor:
                          Colors.white, // Color del texto del botón
                      textStyle: Theme.of(context).textTheme.bodyMedium),
                  child: const Text(
                    "Fuente",
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor:
                          Colors.white, // Color del texto del botón
                      textStyle: Theme.of(context).textTheme.bodyMedium),
                  child: const Text(
                    "Idioma",
                  ),
                ),
              ],
            )),
        Container(
          margin: const EdgeInsets.symmetric(vertical: AppLayoutConst.marginL),
          height: re.hp(15),
          width: double.maxFinite,
          child: Image.asset(
            AppAssets.upsLogo,
          ),
        ),
        Container(
          height: re.hp(5),
          width: double.maxFinite,
          color: AppColors.primaryBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(PAGES.directiva.pagePath);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Directiva",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context)
                      .go(PAGES.malla.pagePath); // Navegar a la ruta '/second
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Malla Curricular",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context)
                      .go(PAGES.asu.pagePath); // Navegar a la ruta '/second
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Color del texto del botón
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                child: const Text(
                  "Grupos ASU",
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).go(PAGES.proyectos.pagePath);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: Theme.of(context).textTheme.bodyMedium),
                child: const Text(
                  "Proyectos",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
