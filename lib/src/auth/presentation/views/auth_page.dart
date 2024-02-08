// Importa los paquetes necesarios
import 'package:flutter/material.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/home_menu.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:landing_page/src/auth/presentation/views/auth_body.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
        body: ListView(
      children: [
        Column(children: [
          SizedBox(
            height: re.hp(5),
          ),
          Body(re: re),
          Footer(re: re),
        ])
      ],
    ));
  }
}
