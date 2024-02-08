import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Body extends StatefulWidget {
  const Body({super.key, required Responsive re});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _email = '';
  bool _isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.marginXL),
          child: Text(
            "Bienvenido a la Administración",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.primaryBlue, fontSize: 30),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: AppLayoutConst.marginXL),
          height: re.hp(35),
          //width: double.maxFinite,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              AppAssets.admin,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppLayoutConst.marginXL,
              vertical: AppLayoutConst.marginXL),
          child: Text(
            "Inicia Sesión para administrar la pagina",
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
              controller: _emailController,
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
            width: re.hp(78),
            margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                hintText: "Contraseña",
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
            onPressed: _isEmailValid
                ? () {
                    if (_emailController.text.isNotEmpty &&
                        _passwordController.text.isNotEmpty) {
                      _signInWithEmailAndPassword(
                        context,
                        _emailController.text.trim(),
                        _passwordController.text.trim(),
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
                                  Navigator.pop(context);
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
            child: const Text("Iniciar Sesión",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          height: re.hp(5),
        ),
      ],
    );
  }

  bool _validateEmail(String email) {
    // Expresión regular para validar un correo electrónico
    final RegExp emailRegex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    return emailRegex.hasMatch(email);
  }

  Future<void> _signInWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // La autenticación fue exitosa, puedes navegar a la siguiente pantalla
      _showMessage('Inicio de sesión exitoso');
      GoRouter.of(context).goNamed(PAGES.admin.pageName);
    } catch (e) {
      // Manejar el error y mostrar un mensaje al usuario
      _showMessage('Error al iniciar sesión, credenciales incorrectas');
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.black,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
