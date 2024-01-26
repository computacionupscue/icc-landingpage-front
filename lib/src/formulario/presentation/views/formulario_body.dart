import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 700)
            ? _DesktopModel(re: widget.re)
            : _MobileModel(re: widget.re);
      },
    );
  }
}

class _DesktopModel extends StatefulWidget {
  _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  State<_DesktopModel> createState() => _DesktopModelState();
}

class _DesktopModelState extends State<_DesktopModel> {
  final CollectionReference _registro =
      FirebaseFirestore.instance.collection('registro');

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

  String _email = '';
  bool _isEmailValid = true;
  String _cedulav = '';
  bool _isIdValid = true;

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
            width: widget.re.hp(78),
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
            width: widget.re.hp(78),
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
            width: widget.re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: TextField(
              controller: _textController3,
              onChanged: (value) {
                setState(() {
                  _email = value;
                  _isEmailValid = _validateEmail(value);
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: "Correo",
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
                errorText: _isEmailValid ? null : 'Correo inválido',
              ),
            )),
        Container(
            width: widget.re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginS),
            child: TextField(
              controller: _textController4,
              onChanged: (value) {
                setState(() {
                  _cedulav = value;
                  _isIdValid = _validateCedula(value);
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.credit_card),
                hintText: "Cedula",
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
                errorText: _isIdValid ? null : 'Cedula inválida',
              ),
            )),
        Container(
            width: widget.re.hp(78),
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
            onPressed: _isEmailValid & _isIdValid
                ? () {
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

                      _textController1.text = '';
                      _textController2.text = '';
                      _textController3.text = '';
                      _textController4.text = '';
                      _textController5.text = '';

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
                            title:
                                const Text('Te has registrado correctamente'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  GoRouter.of(context)
                                      .goNamed(PAGES.home.pageName);
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
                            content: const Text(
                                'Todos los campos deben estar llenos.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                      context); // Cerrar el AlertDialog
                                },
                                child: const Text('Aceptar'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
                : null,
            child: const Text("Registrar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          height: widget.re.hp(5),
        ),
      ],
    );
  }
}

class _MobileModel extends StatefulWidget {
  _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  State<_MobileModel> createState() => _MobileModelState();
}

class _MobileModelState extends State<_MobileModel> {
  final CollectionReference _registro =
      FirebaseFirestore.instance.collection('registro');

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

  String _email = '';
  bool _isEmailValid = true;
  String _cedulav = '';
  bool _isIdValid = true;

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
            textAlign: TextAlign.center,
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
            textAlign: TextAlign.center,
          ),
        ),
        Container(
            width: widget.re.hp(78),
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
            width: widget.re.hp(78),
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
            width: widget.re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController3,
              onChanged: (value) {
                setState(() {
                  _email = value;
                  _isEmailValid = _validateEmail(value);
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: "Correo",
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
                errorText: _isEmailValid ? null : 'Correo inválido',
              ),
            )),
        Container(
            width: widget.re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginS),
            padding:
                const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
            child: TextField(
              controller: _textController4,
              onChanged: (value) {
                setState(() {
                  _cedulav = value;
                  _isIdValid = _validateCedula(value);
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.credit_card),
                hintText: "Cedula",
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Color del borde
                    width: 2.0, // Ancho del borde
                  ),
                ),
                errorText: _isIdValid ? null : 'Cedula inválida',
              ),
            )),
        Container(
            width: widget.re.hp(78),
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
            onPressed: _isEmailValid & _isIdValid
                ? () {
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

                      _textController1.text = '';
                      _textController2.text = '';
                      _textController3.text = '';
                      _textController4.text = '';
                      _textController5.text = '';

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
                            title:
                                const Text('Te has registrado correctamente'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  GoRouter.of(context)
                                      .goNamed(PAGES.home.pageName);
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
                            content: const Text(
                                'Todos los campos deben estar llenos.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                      context); // Cerrar el AlertDialog
                                },
                                child: const Text('Aceptar'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
                : null,
            child: const Text("Registrar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          height: widget.re.hp(5),
        ),
      ],
    );
  }
}

bool _validateEmail(String email) {
  // Expresión regular para validar un correo electrónico
  final RegExp emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  return emailRegex.hasMatch(email);
}

bool _validateCedula(String cedula) {
  // Expresión regular para validar cédula ecuatoriana
  RegExp regex = RegExp(r'^\d{10}$');

  return regex.hasMatch(cedula);
}
