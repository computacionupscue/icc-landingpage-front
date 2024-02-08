import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/home_menu.dart';
import 'package:landing_page/src/shared/menu_admin.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AddProyectosPage extends StatefulWidget {
  const AddProyectosPage({super.key});

  @override
  State<AddProyectosPage> createState() => _AddProyectosPageState();
}

class _AddProyectosPageState extends State<AddProyectosPage> {
  final CollectionReference _proyecto =
      FirebaseFirestore.instance.collection('proyecto');

  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  String _nombre = '';
  String _descripcion = '';
  String _integrantes = '';
  String _grupo = '';
  String _imagen = '';
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          MenuAdmin(re: re),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: re.hp(7),
            ),
            Container(
              width: double.maxFinite,
              child: Text("Registro de Proyectos",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.primaryBlue, fontSize: 30),
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: re.hp(7),
            ),
            Container(
                width: re.hp(80),
                padding: EdgeInsets.symmetric(horizontal: re.hp(5)),
                margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
                child: TextField(
                  controller: _textController1,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.folder_open_outlined),
                    hintText: "Nombre del proyecto",
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
                width: re.hp(80),
                padding: EdgeInsets.symmetric(horizontal: re.hp(5)),
                margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
                child: TextField(
                  controller: _textController2,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          bottom: 107.3), // Ajusta según tus necesidades
                      child: Icon(Icons.description_outlined),
                    ),
                    hintText: "Descripción",
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
                width: re.hp(80),
                padding: EdgeInsets.symmetric(horizontal: re.hp(5)),
                margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
                child: TextField(
                  controller: _textController4,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          bottom: 53), // Ajusta según tus necesidades
                      child: Icon(Icons.people_alt_outlined),
                    ),
                    hintText: "Integrantes",
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
                width: re.hp(80),
                padding: EdgeInsets.symmetric(horizontal: re.hp(5)),
                margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
                child: TextField(
                  controller: _textController3,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.groups_outlined),
                    hintText: "Grupo",
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
                width: re.hp(80),
                padding: EdgeInsets.symmetric(horizontal: re.hp(5)),
                margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
                child: TextField(
                  controller: _textController5,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.image_outlined),
                    hintText: "Imagen",
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
            SizedBox(
              height: re.hp(2),
            ),
            Container(
              width: re.hp(80),
              padding: EdgeInsets.symmetric(horizontal: re.hp(5)),
              child: Padding(
                padding: EdgeInsets.only(bottom: re.hp(10)),
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
                      _descripcion = _textController2.text;
                      _grupo = _textController3.text;
                      _integrantes = _textController4.text;
                      _imagen = _textController5.text;

                      _textController1.text = '';
                      _textController2.text = '';
                      _textController3.text = '';
                      _textController4.text = '';
                      _textController5.text = '';

                      _proyecto.add({
                        'nombre': _nombre,
                        'descripcion': _descripcion,
                        'integrantes': _integrantes,
                        'grupo': _grupo,
                        'imagen': _imagen
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
                                      .goNamed(PAGES.listProyectos.pageName);
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
                  },
                  child: const Text("Crear",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: AppColors.primaryBlueMaterial,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ]),
          Footer(re: re)
        ],
      ),
    );
  }
}
