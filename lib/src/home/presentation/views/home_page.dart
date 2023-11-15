import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/src/home/presentation/views/home_footer.dart';
import 'package:landing_page/src/home/presentation/views/home_groupAsu.dart';
import 'package:landing_page/src/home/presentation/views/home_informacion.dart';
import 'package:landing_page/src/home/presentation/views/home_logo.dart';
import 'package:landing_page/src/home/presentation/views/home_novedades.dart';
import 'package:landing_page/src/home/presentation/views/home_registro.dart';
import 'package:landing_page/src/shared/responsive.dart';

import '../bloc/home/home_bloc.dart';
import 'home_header.dart';
import 'home_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const _HomePageView(),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView();

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
        body: ListView(
      children: [
        Header(re: re),
        Logo(re: re),
        MenuHome(re: re),
        Novedades(re: re),
        const Divider(
          color: Colors.black, // Cambiar el color de la línea
          thickness: 2, // Cambiar el grosor de la línea
          indent: 60, // Cambiar el espacio izquierdo
          endIndent: 60, // Cambiar el espacio derecho
        ),
        Informacion(re: re),
        const Divider(
          color: Colors.black, // Cambiar el color de la línea
          thickness: 2, // Cambiar el grosor de la línea
          indent: 60, // Cambiar el espacio izquierdo
          endIndent: 60, // Cambiar el espacio derecho
        ),
        Registro(re: re),
        GroupAsu(re: re),
        Footer(re: re)
      ],
    ));
  }
}
