import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: re.hp(25),
        width: double.maxFinite,
        color: AppColors.primaryBlueMaterial,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 200),
              
              child: Text("REDES SOCIALES",
                  style:
                    Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            Container(
              padding: const EdgeInsets.only(right: 200),
              child: Text("CONTACTO",
                  style:
                    Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ],
        )
      );
  }
}