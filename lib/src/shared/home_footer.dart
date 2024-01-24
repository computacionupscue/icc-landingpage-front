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
          Text("Síguenos",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(
            height: re.hp(2),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.facebookF),
              color: Colors.white, // Color personalizado
              iconSize: re.hp(4),
              onPressed: () {
                _launchURL("https://www.facebook.com/UPSalesianaEc/");
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
                _launchURL("https://www.instagram.com/upsalesianaec/");
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.youtube),
              color: Colors.white, // Color personalizado
              iconSize: re.hp(4),
              onPressed: () {
                _launchURL(
                    "https://www.youtube.com/channel/UCVtRZLpPa8CFkqXq7aTYiFA");
              },
            ),
            SizedBox(
              width: re.hp(4),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedinIn),
              color: Colors.white, // Color personalizado
              iconSize: re.hp(4),
              onPressed: () {
                _launchURL(
                    "https://ec.linkedin.com/school/universidad-politecnica-salesiana/");
              },
            ),
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