import 'package:flutter/material.dart';
import 'package:landing_page/src/login/presentation/views/login_header.dart';
import 'package:landing_page/src/login/presentation/views/login_body.dart';

import 'package:landing_page/src/shared/responsive.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Header(re: re),
            const SizedBox(height: 15),
            Body(re: re)
          ],
        ),
      ),
    );
  }
}




