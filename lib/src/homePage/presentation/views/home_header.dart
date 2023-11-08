import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/src/homePage/presentation/bloc/home/home_bloc.dart';
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
        height: re.hp(5),
        width: re.hp(220),
        color: AppColors.primaryBlue,
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                final homebloc = context.read<HomeBloc>();
                homebloc.add(const GetDataEvent(valor: 'Modo claro'));
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: const TextStyle(
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
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
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: const TextStyle(
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
              child: const Text(
                "Fuente",
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: const TextStyle(
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
              child: const Text(
                "Idioma",
              ),
            ),
          ],
        ));
  }
}
