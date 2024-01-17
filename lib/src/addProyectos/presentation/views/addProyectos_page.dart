import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AddProyectosPage extends StatefulWidget {
  const AddProyectosPage({super.key});

  @override
  State<AddProyectosPage> createState() => _AddProyectosPageState();
}

class _AddProyectosPageState extends State<AddProyectosPage> {
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: re.hp(7)),
            child: Text(
              "Registro de Proyectos",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: AppColors.primaryBlue, fontSize: 30),
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
      ]),
    );
  }
}
