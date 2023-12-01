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
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 800)
            ? _DesktopModel(re: re)
            : _MobileModel(re: re);
      },
    );
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: re.hp(25),
        width: double.maxFinite,
        color: AppColors.primaryBlueMaterial,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Síguenos",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                icon: Icon(FontAwesome.facebook),
                onPressed: () {
                  // Acción al hacer clic en el ícono de Facebook
                },
              ),
              IconButton(
                icon: Icon(FontAwesome.twitter),
                onPressed: () {
                  // Acción al hacer clic en el ícono de Twitter
                },
              ),
              IconButton(
                icon: Icon(FontAwesome.instagram),
                onPressed: () {
                  // Acción al hacer clic en el ícono de Instagram
                },
              ),
              ],
            )
          ],
        ));
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: re.hp(25),
        width: double.maxFinite,
        color: AppColors.primaryBlueMaterial,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("REDES SOCIALES",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            const SizedBox(height: 35),
            Text("CONTACTO",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ],
        ));
  }
}
