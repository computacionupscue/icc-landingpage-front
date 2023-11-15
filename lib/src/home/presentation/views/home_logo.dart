
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Logo extends StatelessWidget {
    const Logo({
      super.key,
      required this.re,
    });
  
    final Responsive re;
  
    @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: AppLayoutConst.marginL),
        height: re.hp(15),
        width: double.maxFinite,
        child: Image.asset(
          AppAssets.upsLogo,
        ),
      );
    }
  }