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
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  String _nombre = '';
  String _apellido = '';
  String _correo = '';
  String _cedula = '';
  String _inst = '';

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
            child: TextField(
              controller: _textController1,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_3_outlined),
                hintText: "Nombre",
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
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: TextField(
              controller: _textController2,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
                hintText: "Apellido",
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
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: TextField(
              controller: _textController3,
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
              controller: _textController4,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.credit_card),
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
            width: re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: TextField(
              controller: _textController5,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school_outlined),
                hintText: "Institución Educativa",
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
                  _textController2.text.isNotEmpty &&
                  _textController3.text.isNotEmpty &&
                  _textController4.text.isNotEmpty &&
                  _textController5.text.isNotEmpty) {
                _nombre = _textController1.text;
                _apellido = _textController2.text;
                _correo = _textController3.text;
                _cedula = _textController4.text;
                _inst = _textController5.text;

                _registro.add({
                  'nombre': _nombre,
                  'apellido': _apellido,
                  'correo': _correo,
                  'cedula': _cedula,
                  'inst': _inst
                });
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Te has registrado correctamente'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Aceptar'),
                        ),
                      ],
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Campos Vacíos'),
                      content:
                          const Text('Todos los campos deben estar llenos.'),
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
        SizedBox(
          height: re.hp(5),
        ),
        Container(
          color: AppColors.primaryBlueMaterial,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlueMaterial,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(250, 45)),
                onPressed: () {
                  GoRouter.of(context).go(PAGES.malla.pagePath);
                },
                icon: const Icon(
                  Icons.view_list,
                  size: 20,
                  color: Colors.white,
                ), // Icono para el botón de la malla curricular
                label: const Text("Malla Curricular",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlueMaterial,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(250, 45)),
                onPressed: () {
                  GoRouter.of(context).go(PAGES.home.pagePath);
                },
                icon: const Icon(
                  Icons.home,
                  size: 20,
                  color: Colors.white,
                ), // Icono para el botón de la página principal
                label: const Text("Página principal",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _MobileModel extends StatelessWidget {
  final CollectionReference _registro =
      FirebaseFirestore.instance.collection('registro');

  _MobileModel({
    required this.re,
  });

  final Responsive re;
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  String _nombre = '';
  String _apellido = '';
  String _correo = '';
  String _cedula = '';
  String _inst = '';

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
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController1,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_3_outlined),
                hintText: "Nombre",
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
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController2,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
                hintText: "Apellido",
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
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController3,
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
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController4,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.credit_card),
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
            width: re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController5,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school_outlined),
                hintText: "Institución Educativa",
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
          padding:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryBlueMaterial,
                foregroundColor: Colors.black,
                fixedSize: const Size(250, 45)),
            onPressed: () {
              if (_textController1.text.isNotEmpty &&
                  _textController2.text.isNotEmpty &&
                  _textController3.text.isNotEmpty &&
                  _textController4.text.isNotEmpty &&
                  _textController5.text.isNotEmpty) {
                _nombre = _textController1.text;
                _apellido = _textController2.text;
                _correo = _textController3.text;
                _cedula = _textController4.text;
                _inst = _textController5.text;

                _registro.add({
                  'nombre': _nombre,
                  'apellido': _apellido,
                  'correo': _correo,
                  'cedula': _cedula,
                  'inst': _inst
                });
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Te has registrado correctamente'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Aceptar'),
                        ),
                      ],
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Campos Vacíos'),
                      content:
                          const Text('Todos los campos deben estar llenos.'),
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
        SizedBox(
          height: re.hp(5),
        ),
        Container(
          color: AppColors.primaryBlueMaterial,
          width: double.maxFinite,
          child: Row(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlueMaterial,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(250, 45)),
                onPressed: () {
                  GoRouter.of(context).go(PAGES.malla.pagePath);
                },
                icon: const Icon(
                  Icons.view_list,
                  size: 20,
                  color: Colors.white,
                ), // Icono para el botón de la malla curricular
                label: const Text("Malla Curricular",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryBlueMaterial,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(250, 45)),
                onPressed: () {
                  GoRouter.of(context).go(PAGES.home.pagePath);
                },
                icon: const Icon(
                  Icons.home,
                  size: 20,
                  color: Colors.white,
                ), // Icono para el botón de la página principal
                label: const Text("Página principal",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              )
            ],
          ),
        )
      ],
    );
  }
}
