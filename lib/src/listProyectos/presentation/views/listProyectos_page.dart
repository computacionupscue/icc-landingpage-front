import 'package:flutter/material.dart';
import 'package:landing_page/src/listProyectos/presentation/views/list_page.dart';
import 'package:landing_page/src/shared/home_menu.dart';
import 'package:landing_page/src/shared/responsive.dart';

class ListProyectosPage extends StatefulWidget {
  const ListProyectosPage({super.key});

  @override
  State<ListProyectosPage> createState() => _ListProyectosPageState();
}

class _ListProyectosPageState extends State<ListProyectosPage> {
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            MenuHome(re: re),
            Proyectos(re: re),
          ]),
        ],
      ),
    );
  }
}
