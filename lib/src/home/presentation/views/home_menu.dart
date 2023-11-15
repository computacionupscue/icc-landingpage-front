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
        color: AppColors.primaryBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/directiva'
                ); 
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge
              ),
              child: const Text(
                "Directiva",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
              context, '/malla'); // Navegar a la ruta '/second
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge
              ),
              child: const Text(
                "Malla Curricular",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/asu'); // Navegar a la ruta '/second
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Color del texto del botón
                textStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge,
              ),
              child: const Text(
            "Grupos ASU",
              ),
            ),
            TextButton(
              onPressed: () {
            Navigator.pushNamed(
              context, '/proyectos');
              },
              style: TextButton.styleFrom(
            foregroundColor: Colors.white, // Color del texto del botón
            textStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
              ),
              child: const Text(
            "Proyectos",
              ),
            ),
          ],
        ));
  }
}
