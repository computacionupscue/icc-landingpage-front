import 'dart:js_interop_unsafe';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/app/config/router/app_routes_pages.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/home_menu.dart';
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
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                MenuHome(re: re),
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
                    color: AppColors.primaryBlue,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text('Ver Lista de Proyectos',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                            textAlign: TextAlign.center),
                        onTap: () {
                          GoRouter.of(context)
                              .goNamed(PAGES.listProyectos.pageName);
                        },
                      ),
                      ListTile(
                        title: Text('Ver Lista de Estudiantes',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                            textAlign: TextAlign.center),
                        onTap: () {
                          GoRouter.of(context)
                              .goNamed(PAGES.listRegistros.pageName);
                        },
                      ),
                      ListTile(
                        title: Text('Agregar proyectos',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                            textAlign: TextAlign.center),
                        onTap: () {
                          GoRouter.of(context)
                              .goNamed(PAGES.addProyectos.pageName);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
