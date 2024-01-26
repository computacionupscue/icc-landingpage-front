import 'package:flutter/material.dart';
import 'package:landing_page/src/formulario/presentation/views/formulario_header.dart';
import 'package:landing_page/src/formulario/presentation/views/formulario_body.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/home_menu.dart';

import 'package:landing_page/src/shared/responsive.dart';

class FormularioPage extends StatelessWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              MenuHome(re: re),
              SizedBox(height: re.hp(7)),
              Body(re: re),
              Footer(re: re),
            ],
          ),
        ],
      ),
    );
  }
}
