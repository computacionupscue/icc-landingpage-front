import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: re.hp(2)),
                child: Text(
                  "Descripcion: $descripcion",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                      ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: re.hp(2)),
                child: Text("Integrantes: $integrantes",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.black),
                    textAlign: TextAlign.start),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: re.hp(2)),
                child: Text("Grupo: $grupo",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.black),
                    textAlign: TextAlign.start),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
