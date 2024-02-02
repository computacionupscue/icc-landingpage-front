import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: AppColors.primaryBlueMaterial,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: re.hp(5),
          ),
          Text("Contáctanos",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(
            height: re.hp(3),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.facebookF),
              color: Colors.white, // Color personalizado
              iconSize: re.hp(4),
              onPressed: () {
                _launchURL("https://www.facebook.com/sistemasupscuenca");
              },
            ),
            SizedBox(
              width: re.hp(4),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.instagram),
              color: Colors.white, // Color personalizado
              iconSize: re.hp(4),
              onPressed: () {
                _launchURL("https://www.facebook.com/sistemasupscuenca");
              },
            ),
            SizedBox(
              width: re.hp(4),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.tiktok),
              color: Colors.white, // Color personalizado
              iconSize: re.hp(4),
              onPressed: () {
                _launchURL("https://www.tiktok.com/@computacionupscuen");
              },
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: re.hp(1),
            ),
            Text(
              "Correo electronico",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: re.hp(1),
            ),
            Text(
              "computacioncue@ups.edu.ec",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            )
          ]),
          SizedBox(
            height: re.hp(5),
          ),
        ],
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}
