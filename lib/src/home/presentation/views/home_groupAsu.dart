import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/home/presentation/bloc/home/home_bloc.dart';
import 'package:landing_page/src/shared/responsive.dart';

class GroupAsu extends StatelessWidget {
  const GroupAsu({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      height: re.hp(50),
      width: re.hp(220),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              //padding: const EdgeInsets.only(left: 250),
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
              //padding: const EdgeInsets.symmetric(horizontal: 235),
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
              )
              ),
          Container(
              //padding: const EdgeInsets.only(right: 250),
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
    );
  }
}