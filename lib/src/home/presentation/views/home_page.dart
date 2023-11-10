import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/src/home/presentation/views/home_footer.dart';
import 'package:landing_page/src/home/presentation/views/home_groupAsu.dart';
import 'package:landing_page/src/home/presentation/views/home_informacion.dart';
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
        Container(
          margin: const EdgeInsets.symmetric(vertical: AppLayoutConst.marginL),
          height: re.hp(15),
          width: re.hp(220),
          child: Image.asset(
            AppAssets.upsLogo,
          ),
        ),
        MenuHome(re: re),
        Container(
          height: re.hp(50),
          width: re.hp(220),
          color: AppColors.primaryYellow,
          child: const Center(
            child: Text("NOVEDADES"),
          ),
        ),
        Informacion(re: re),
        
        const Divider(
          color: Colors.black, // Cambiar el color de la línea
          thickness: 2, // Cambiar el grosor de la línea
          indent: 20, // Cambiar el espacio izquierdo
          endIndent: 20, // Cambiar el espacio derecho
        ),
        Registro(re: re),
        const Divider(
          color: Colors.black, // Cambiar el color de la línea
          thickness: 2, // Cambiar el grosor de la línea
          indent: 20, // Cambiar el espacio izquierdo
          endIndent: 20, // Cambiar el espacio derecho
        ),
        GroupAsu(re: re),
        Footer(re: re)
      ],
    ));
  }
}

