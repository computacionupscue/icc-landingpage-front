import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/src/home/home.dart';
import 'package:landing_page/src/home/presentation/bloc/header/header_bloc.dart';
import 'package:landing_page/src/home/presentation/bloc/home/home_bloc.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: re.hp(5),
        // width: re.hp(220),
        color: AppColors.primaryBlue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                final homebloc = context.read<HomeBloc>();
                homebloc.add(const GetDataEvent(valor: 'Modo claro'));

                // final headerbloc = context.read()<HeaderBloc>();
                // headerbloc.add(const ToggleThemeEvent(valor: 'Modo oscuro'));
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Color del texto del botón
                  textStyle: Theme.of(context).textTheme.bodyLarge),
              // child: BlocBuilder<HeaderBloc, HeaderState>(
              //   builder: (context, state) {
              //      return MaterialApp(
              //       theme: state is HeaderLightThemeState
              //           ? ThemeData.light()
              //           : ThemeData.dark(),
              //       home: HomePage(),
              //     );
              //   },

              // ),
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  // if (state is HomeInitial) {
                  //   return const Text(
                  //     "Modo Oscuro",
                  //   );
                  // } else if (state is HomeLoading) {
                  //   return const Center(
                  //     child: CircularProgressIndicator(),
                  //   );
                  // }

                  // return Text(
                  //   (state as HomeLoaded).valor,
                  // );
                  return MaterialApp(
                    theme: state is HomeInitial
                        ? ThemeData.light()
                        : ThemeData.dark(),
                    home: HomePage(),
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Color del texto del botón
                  textStyle: Theme.of(context).textTheme.bodyLarge),
              child: const Text(
                "Fuente",
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // Color del texto del botón
                  textStyle: Theme.of(context).textTheme.bodyLarge),
              child: const Text(
                "Idioma",
              ),
            ),
          ],
        ));
  }
}
