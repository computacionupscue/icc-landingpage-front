import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AdminHead extends StatelessWidget {
  const AdminHead({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppLayoutConst.marginXL),
          child: Text(
            "Bienvenido a la Administración",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.primaryBlue, fontSize: 30),
          ),
        ),
        SizedBox(height: re.hp(5)),
        SizedBox(
          height: re.hp(52),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              AppAssets.admin,
            ),
          ),
        ),
      ],
    );
  }
}