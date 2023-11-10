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
    return Container(
      height: re.hp(60),
      width: re.hp(220),
      color: AppColors.primaryYellow,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 200),
            margin: const EdgeInsets.only(top: AppLayoutConst.marginXL),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/formulario'
                ); 
              },
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
    );
  }
}

