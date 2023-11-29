import 'package:flutter/material.dart';
import 'package:landing_page/src/directiva/presentation/views/directiva_administrativos.dart';
import 'package:landing_page/src/directiva/presentation/views/directiva_docentes.dart';
import 'package:landing_page/src/directiva/presentation/views/directiva_header.dart';
import 'package:landing_page/src/shared/responsive.dart';

class DirectivaPage extends StatelessWidget {
  const DirectivaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              //MenuHome(re: re),
              Header(re: re),
              Administrativos(re: re),
              Docentes(re: re),
            ],
          )
        ],
      ),
    );
  }
}
