import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
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




