import 'package:flutter/material.dart';
import 'package:landing_page/src/shared/responsive.dart';

class MallaBox extends StatelessWidget {
  final String titulo;
  final int h1;
  final int h2;
  final int h3;

  const MallaBox({
    super.key,
    required this.titulo,
    required this.re,
    required this.h1,
    required this.h2,
    required this.h3,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message:
          "Horas de Aprendizaje - Contacto Docente: $h1\nHoras de Aprendizaje - Práctico Experimental: $h2\nHoras de Aprendizaje - Autónomo: $h3",
      child: Container(
        width: re.hp(15), // Ancho de la imagen
        height: re.hp(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Color del borde
            width: 2.0, // Ancho del borde
          ),
        ),
        child: Center(
          child: Text(titulo,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.black),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
