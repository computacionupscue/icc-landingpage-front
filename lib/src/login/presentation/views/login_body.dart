import 'package:cloud_firestore/cloud_firestore.dart';
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
  final CollectionReference _registro =
      FirebaseFirestore.instance.collection('registro');

  _DesktopModel({
    required this.re,
  });

  final Responsive re;
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  String _correo = '';
  String _cedula = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
          child: Text(
            "Bienvenido a la Consejería Académica",
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
            "En el caso de tener alguna dificultad, te podemos ayudar, por favor ingresa tu numero de cedula",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 19.5),
          ),
        ),
        Container(
            width: re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: TextField(
              controller: _textController1,
              decoration: const InputDecoration(
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
            child: TextField(
              controller: _textController2,
              decoration: const InputDecoration(
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
              if (_textController1.text.isNotEmpty &&
                  _textController2.text.isNotEmpty) {
                _correo = _textController1.text;
                _cedula = _textController2.text;
                GoRouter.of(context).go(PAGES.home.pagePath);
                _registro.add({'correo': _correo, 'cedula': _cedula});
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Campos Vacíos'),
                      content: const Text('Ambos campos deben estar llenos.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context); // Cerrar el AlertDialog
                          },
                          child: const Text('Aceptar'),
                        ),
                      ],
                    );
                  },
                );
              }
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
            "Bienvenido a la Consejería Académica",
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
            "En el caso de tener alguna dificultad, te podemos ayudar, por favor ingresa tu numero de cedula",
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
