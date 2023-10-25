import 'package:flutter/material.dart';
import 'package:landing_page/app/config/app_config.dart';
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
            Container(
              margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
              height: 100,
              width: 100,
              color: AppColors.primaryBlue,
            ),
            Text('Hola Mundo LoginPage', style: TextStyle(fontSize: re.hp(5))),
            Image.asset(
              AppAssets.upsLogo,
              height: re.hp(10),
            )
          ],
        ),
      ),
    );
  }
}
