import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/custom_directiva_box.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Administrativos extends StatelessWidget {
  String nombre1;
  String correo1;
  String nombre2;
  String correo2;

  Administrativos(
      {super.key,
      required this.re,
      required this.nombre1,
      required this.correo1,
      required this.nombre2,
      required this.correo2});

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return re.width < 1000
        ? _MobileModel(
            re: re,
            nombre1: nombre1,
            correo1: correo1,
            nombre2: nombre2,
            correo2: correo2)
        : _DesktopModel(
            re: re,
            nombre1: nombre1,
            correo1: correo1,
            nombre2: nombre2,
            correo2: correo2);
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
    required this.nombre1,
    required this.correo1,
    required this.nombre2,
    required this.correo2,
  });

  final Responsive re;
  final String nombre1;
  final String correo1;
  final String nombre2;
  final String correo2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: re.hp(7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("Director de Carrera",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: AppColors.primaryBlue)),
              SizedBox(
                height: re.hp(7),
              ),
              CustomDirectivaBox(
                  nombre: nombre1,
                  cargo: "Director de Carrera",
                  correo: correo1,
                  foto: AppAssets.jenniferYepezDocente),
            ],
          ),
          Column(
            children: [
              Text("Administrativos",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: AppColors.primaryBlue)),
              SizedBox(
                height: re.hp(7),
              ),
              Row(
                children: [
                  CustomDirectivaBox(
                      nombre: nombre2,
                      cargo:
                          "Responsable de Extensiones Universitarias, Prácticas Pre Profesionales / Pasantías",
                      correo: correo2,
                      foto: AppAssets.robertoGarciaDocente),
                  SizedBox(
                    width: re.hp(10),
                  ),
                  const CustomDirectivaBox(
                      nombre: "HURTADO ORTIZ REMIGIO ISMAEL",
                      cargo: "Responsable de Titulaciones",
                      correo: "rhurtadoo@ups.edu.ec",
                      foto: AppAssets.usuariodef),
                ],
              )
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
    required this.nombre1,
    required this.correo1,
    required this.nombre2,
    required this.correo2,
  });

  final Responsive re;
  final String nombre1;
  final String correo1;
  final String nombre2;
  final String correo2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: re.hp(7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Director de Carrera",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: AppColors.primaryBlue)),
          SizedBox(
            height: re.hp(7),
          ),
          CustomDirectivaBox(
              nombre: nombre1,
              cargo: "Director de Carrera",
              correo: correo1,
              foto: AppAssets.jenniferYepezDocente),
          SizedBox(
            height: re.hp(7),
          ),
          Text("Administrativos",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: AppColors.primaryBlue)),
          SizedBox(
            height: re.hp(7),
          ),
          Column(
            children: [
              CustomDirectivaBox(
                  nombre: nombre2,
                  cargo:
                      "Responsable de Extensiones Universitarias, Prácticas Pre Profesionales / Pasantías",
                  correo: correo2,
                  foto: AppAssets.robertoGarciaDocente),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "HURTADO ORTIZ REMIGIO ISMAEL",
                  cargo: "Responsable de Titulaciones",
                  correo: "rhurtadoo@ups.edu.ec",
                  foto: AppAssets.usuariodef),
            ],
          )
        ],
      ),
    );
  }
}
