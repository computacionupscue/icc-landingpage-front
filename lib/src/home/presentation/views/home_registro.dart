import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Registro extends StatelessWidget {
  const Registro({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 1200)
            ? _DesktopModel(re: re)
            : _MobileModel(re: re);
      },
    );
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
      height: re.hp(60),
      width: double.maxFinite,
      color: AppColors.primaryYellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 200),
            margin: const EdgeInsets.only(top: AppLayoutConst.marginXL),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/formulario');
              },
              style: TextButton.styleFrom(
                foregroundColor:
                    AppColors.primaryBlue, // Color del texto del botón
                textStyle: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
              child: Text(
                  "Te interesa la carrera,\nregistrate para tener\nmas informacion",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: AppColors.primaryBlue,
                      ),
                  textAlign: TextAlign.center),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 200),
            child: ClipOval(
              child: Image.asset(
                AppAssets.salesianosLogo,
                width: re.hp(50), // Ancho de la imagen
                height: re.hp(35), // Alto de la imagen
                fit: BoxFit.cover, // Puedes ajustar esto según tus necesidades
              ),
            ),
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
      height: re.hp(70),
      width: double.maxFinite,
      color: AppColors.primaryYellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: AppLayoutConst.marginXL),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/formulario');
              },
              style: TextButton.styleFrom(
                foregroundColor:
                    AppColors.primaryBlue, // Color del texto del botón
                textStyle: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
              child: Text(
                  "Te interesa la carrera,\nregistrate para tener\nmas informacion",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: AppColors.primaryBlue,
                      ),
                  textAlign: TextAlign.center),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginXL),
            child: ClipOval(
              child: Image.asset(
                AppAssets.salesianosLogo,
                width: re.hp(50), // Ancho de la imagen
                height: re.hp(35), // Alto de la imagen
                fit: BoxFit.cover, // Puedes ajustar esto según tus necesidades
              ),
            ),
          ),
        ],
      ),
    );
  }
}
