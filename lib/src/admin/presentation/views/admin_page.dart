import 'dart:js_interop_unsafe';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/responsive.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: re.hp(7)),
              child: Text(
                "Administración",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.primaryBlue),
              ),
            ),
            Container(
              width: re.hp(100),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Puedes cambiar el color del borde aquí
                  width: 2.0, // Puedes ajustar el ancho del borde aquí
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Ver Lista de Proyectos',
                        textAlign: TextAlign.center),
                    onTap: () {
                      GoRouter.of(context)
                          .goNamed(PAGES.listProyectos.pageName);
                    },
                  ),
                  ListTile(
                    title: const Text('Ver Lista de Estudiantes',
                        textAlign: TextAlign.center),
                    onTap: () {
                      GoRouter.of(context)
                          .goNamed(PAGES.listRegistros.pageName);
                    },
                  ),
                  ListTile(
                    title: const Text('Agregar proyectos',
                        textAlign: TextAlign.center),
                    onTap: () {
                      GoRouter.of(context).goNamed(PAGES.addProyectos.pageName);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
