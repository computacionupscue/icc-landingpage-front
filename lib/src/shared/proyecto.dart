import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

final List<String> images = [
  'assets/images/logos/ups.png',
  'assets/images/logos/ups-white.png',
  'assets/images/ups-30a.png',
  'assets/images/ups-30a-white.png'
  // ... más rutas de imágenes
];

class Proyecto extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String integrantes;
  final String grupo;
  final String imagen;

  const Proyecto({
    super.key,
    required this.re,
    required this.nombre,
    required this.descripcion,
    required this.integrantes,
    required this.grupo,
    required this.imagen,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: re.hp(7)),
          child: Text(nombre,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.primaryBlue)),
        ),
        Container(
          color: Colors.amber,
          height: re.hp(45),
          width: re.hp(90),
          child: Image.network(
            imagen,
            // width: 100, // Ajusta según tus necesidades
            // height: 100, // Ajusta según tus necesidades
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: re.hp(5)),
          height: re.hp(20),
          width: re.hp(90),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Color del borde
              width: 2.0, // Ancho del borde
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(descripcion,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black)),
              Text(integrantes,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black)),
              Text(grupo,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black)),
            ],
          ),
        ),
      ],
    );
  }
}
