import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 700)
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
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
          child: Text(
            "Bienvenido a la Carrera de Computacion",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.primaryBlue, fontSize: 30),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppLayoutConst.marginXL,
              vertical: AppLayoutConst.marginXL),
          child: Text(
            "Aqui puedes tener mas informacion sobre la carrera, inscribete con tu correo y tu numero de cedula",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 19.5),
          ),
        ),
        Container(
            width: re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Correo",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
              ),
            )),
        Container(
            width: re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginS),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Cedula",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
              ),
            )),
        Container(
          margin: const EdgeInsets.only(top: AppLayoutConst.marginL),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryBlueMaterial,
                foregroundColor: Colors.black,
                fixedSize: const Size(250, 45)),
            onPressed: () {
              GoRouter.of(context).go(PAGES.home.pagePath);
            },
            child: const Text("Siguiente",
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: AppColors.primaryBlueMaterial,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
          child: Text(
            "Bienvenido a la Carrera de Computacion",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.primaryBlue, fontSize: 30),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppLayoutConst.marginXL,
              vertical: AppLayoutConst.marginXL),
          child: Text(
            "Aqui puedes tener mas informacion sobre la carrera, inscribete con tu correo y tu numero de cedula",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 19.5),
          ),
        ),
        Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            padding: EdgeInsets.symmetric(horizontal: re.hp(7)),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Correo",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
              ),
            )),
        Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginS),
            padding: EdgeInsets.symmetric(horizontal: re.hp(7)),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Cedula",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: re.hp(7)),
          margin: const EdgeInsets.only(top: AppLayoutConst.marginL),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryBlueMaterial,
                foregroundColor: Colors.black,
                fixedSize: const Size(double.maxFinite, 45)),
            onPressed: () {
              GoRouter.of(context).go(PAGES.home.pagePath);
            },
            child: const Text("Siguiente",
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: AppColors.primaryBlueMaterial,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
