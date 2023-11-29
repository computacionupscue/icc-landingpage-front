import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/custom_directiva_box.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Docentes extends StatelessWidget {
  const Docentes({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return re.width<1160 ? _MobileModel(re: re): _DesktopModel(re: re);
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
      padding: EdgeInsets.only(bottom: re.hp(10)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: re.hp(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Docentes",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
              CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
              CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
              CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
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
      padding: EdgeInsets.only(bottom: re.hp(10)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: re.hp(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Docentes",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                nombre: "NOMBRE",
                cargo: "Cargo",
                correo: "Correo",
                foto: AppAssets.salesianosLogo
              ),
            ],
          ),
        ],
      ),
    );
  }
}