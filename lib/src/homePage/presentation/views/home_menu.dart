import 'package:flutter/material.dart';

import 'package:landing_page/app/config/theme/app_colors.dart';

import 'package:landing_page/src/shared/responsive.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: re.hp(5),
        width: double.maxFinite,
        // width: re.hp(220),
        color: AppColors.primaryBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                color: Colors.red,
                // padding:
                //     const EdgeInsets.only(left: AppLayoutConst.marginMenu2),
                // margin: const EdgeInsets.only(right: AppLayoutConst.marginMenu),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: const TextStyle(
                        fontFamily: 'Roboto' // Tamaño del texto del botón
                        ),
                  ),
                  child: const Text(
                    "Directiva",
                  ),
                )),
            Container(
                color: Colors.red,
                // margin: const EdgeInsets.only(right: AppLayoutConst.marginMenu),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Color del texto del botón
                    textStyle: const TextStyle(
                        fontFamily: 'Roboto' // Tamaño del texto del botón
                        ),
                  ),
                  child: const Text(
                    "Malla Curricular",
                  ),
                )),
            Container(
                // margin: const EdgeInsets.only(right: AppLayoutConst.marginMenu),
                child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: const TextStyle(
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
              child: const Text(
                "Grupos ASU",
              ),
            )),
            Container(
                // padding:
                // const EdgeInsets.only(right: AppLayoutConst.marginMenu2),
                child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: const TextStyle(
                    fontFamily: 'Roboto' // Tamaño del texto del botón
                    ),
              ),
              child: const Text(
                "Proyectos",
              ),
            )),
          ],
        ));
  }
}
