import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/custom_directiva_box.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Administrativos extends StatelessWidget {
  const Administrativos({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return re.width<1000 ? _MobileModel(re: re): _DesktopModel(re: re);
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
                    .copyWith(color: AppColors.primaryBlue)
              ),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                nombre: "YEPEZ ALULEMA JENNIFER ANDREA",
                cargo: "Director de Carrera",
                correo: "jyepez@ups.edu.ec",
                foto: AppAssets.salesianosLogo
              ),
            ],
          ),
          Column(
            children: [
              Text("Administrativos",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: AppColors.primaryBlue)
              ),
              SizedBox(
                height: re.hp(7),
              ),
              Row(
                children: [
                  const CustomDirectivaBox(
                    nombre: "GARCIA VELEZ ROBERTO AGUSTIN",
                    cargo: "Responsable de Extensiones Universitarias, Prácticas Pre Profesionales / Pasantías",
                    correo: "rgarciav@ups.edu.ec",
                    foto: AppAssets.salesianosLogo
                  ),
                  SizedBox(
                    width: re.hp(10),
                  ),
                  const CustomDirectivaBox(
                    nombre: "HURTADO ORTIZ REMIGIO ISMAEL",
                    cargo: "Responsable de Titulaciones",
                    correo: "rhurtadoo@ups.edu.ec",
                    foto: AppAssets.salesianosLogo
                  ),
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
  });

  final Responsive re;

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
                .copyWith(color: AppColors.primaryBlue)
          ),
          SizedBox(
            height: re.hp(7),
          ),
          const CustomDirectivaBox(
            nombre: "YEPEZ ALULEMA JENNIFER ANDREA",
            cargo: "Director de Carrera",
            correo: "jyepez@ups.edu.ec",
            foto: AppAssets.salesianosLogo
          ),
          SizedBox(
            height: re.hp(7),
          ),
          Text("Administrativos",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.primaryBlue)
          ),
          SizedBox(
            height: re.hp(7),
          ),
          Column(
            children: [
              const CustomDirectivaBox(
                nombre: "GARCIA VELEZ ROBERTO AGUSTIN",
                cargo: "Responsable de Extensiones Universitarias, Prácticas Pre Profesionales / Pasantías",
                correo: "rgarciav@ups.edu.ec",
                foto: AppAssets.salesianosLogo
              ),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                nombre: "HURTADO ORTIZ REMIGIO ISMAEL",
                cargo: "Responsable de Titulaciones",
                correo: "rhurtadoo@ups.edu.ec",
                foto: AppAssets.salesianosLogo
              ),
            ],
          )
        ],
      ),
    );
  }
}