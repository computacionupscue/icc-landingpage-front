import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        )
      );
  }
}