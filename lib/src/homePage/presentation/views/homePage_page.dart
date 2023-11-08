import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/app/config/app_config.dart';
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
        SizedBox(
            height: re.hp(10),
            width: re.hp(220),
            child: const Center(
                child: Text("Información de la carrera",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Roboto",
                        color: AppColors.primaryBlue)))),
        SizedBox(
            height: re.hp(15),
            width: re.hp(220),
            child: const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Inicio de inscripciones\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text(
                  'Finalizacion de inscripciones\n02/05/2023',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryBlue),
                ),
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Inicio de matriculas\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Finalizacion de matriculas\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
              ],
            )),
        SizedBox(
            height: re.hp(18),
            width: re.hp(220),
            child: const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Inicio de inscripciones\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Finalizacion de inscripciones\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Inicio de matriculas\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
                Padding(padding: EdgeInsets.only(left: 135)),
                Icon(
                  Icons.app_registration, // El ícono que deseas mostrar
                  color: AppColors
                      .primaryBlue, // Opcional: Define el color del ícono
                  size: 48.0,
                ),
                Text("Finalizacion de matriculas\n02/05/2023",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryBlue)),
              ],
            )),
        const Divider(
          color: Colors.black, // Cambiar el color de la línea
          thickness: 2, // Cambiar el grosor de la línea
          indent: 20, // Cambiar el espacio izquierdo
          endIndent: 20, // Cambiar el espacio derecho
        ),
        Container(
          height: re.hp(60),
          width: re.hp(220),
          color: AppColors.primaryYellow,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 200),
                margin: const EdgeInsets.only(top: AppLayoutConst.marginXL),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor:
                        AppColors.primaryBlue, // Color del texto del botón
                    textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto' // Tamaño del texto del botón
                        ),
                  ),
                  child: const Text(
                      "Te interesa la carrera,\nregistrate para tener\nmas informacion",
                      style: TextStyle(fontSize: 40),
                      textAlign: TextAlign.center),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 400),
                child: ClipOval(
                  child: Image.asset(
                    AppAssets.salesianosLogo,
                    width: re.hp(50), // Ancho de la imagen
                    height: re.hp(35), // Alto de la imagen
                    fit: BoxFit
                        .cover, // Puedes ajustar esto según tus necesidades
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black, // Cambiar el color de la línea
          thickness: 2, // Cambiar el grosor de la línea
          indent: 20, // Cambiar el espacio izquierdo
          endIndent: 20, // Cambiar el espacio derecho
        ),
        Container(
          padding: const EdgeInsets.only(top: 50),
          height: re.hp(50),
          width: re.hp(220),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 250),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          AppAssets.salesianosLogo,
                          width: re.hp(25), // Ancho de la imagen
                          height: re.hp(25), // Alto de la imagen
                          fit: BoxFit
                              .cover, // Puedes ajustar esto según tus necesidades
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          final homebloc = context.read<HomeBloc>();
                          homebloc.add(const GetDataEvent(
                              valor: 'DEsde GestureDEtector'));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: const Text("ASU\nRECICLA\nUPS",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: "Roboto"),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 235),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          AppAssets.salesianosLogo,
                          width: re.hp(25), // Ancho de la imagen
                          height: re.hp(25), // Alto de la imagen
                          fit: BoxFit
                              .cover, // Puedes ajustar esto según tus necesidades
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: const Text("ASU\nSOFTWARE\nLIBRE",
                            style:
                                TextStyle(fontSize: 20, fontFamily: "Roboto"),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.only(right: 250),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          AppAssets.salesianosLogo,
                          width: re.hp(25), // Ancho de la imagen
                          height: re.hp(25), // Alto de la imagen
                          fit: BoxFit
                              .cover, // Puedes ajustar esto según tus necesidades
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: const Text("ASU\nIEEE\nUPS",
                            style:
                                TextStyle(fontSize: 20, fontFamily: "Roboto"),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Container(
            height: re.hp(25),
            width: re.hp(220),
            color: AppColors.primaryBlueMaterial,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 100),
                  child: const Text("REDES SOCIALES",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 1000),
                  child: const Text("CONTACTO",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ],
            ))
      ],
    ));
  }
}
