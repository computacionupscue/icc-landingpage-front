import 'package:flutter/material.dart';
import 'package:landing_page/src/formulario/presentation/views/formulario_header.dart';
import 'package:landing_page/src/formulario/presentation/views/formulario_body.dart';

import 'package:landing_page/src/shared/responsive.dart';

class FormularioPage extends StatelessWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);

    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Header(re: re),
                const SizedBox(height: 15),
                Body(re: re)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
