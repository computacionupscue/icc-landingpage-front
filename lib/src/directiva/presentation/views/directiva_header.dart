import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: re.hp(7)),
      child: Text("Planta Docente",
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: AppColors.primaryBlue)
      ),
    );
  }
}