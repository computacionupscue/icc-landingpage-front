import 'dart:js_interop_unsafe';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/listRegistros/presentation/views/list_page.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/home_menu.dart';
import 'package:landing_page/src/shared/responsive.dart';

class ListRegistrosPage extends StatefulWidget {
  const ListRegistrosPage({super.key});

  @override
  State<ListRegistrosPage> createState() => _ListRegistrosPageState();
}

class _ListRegistrosPageState extends State<ListRegistrosPage> {
  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [MenuHome(re: re), Registros(re: re), Footer(re: re)],
          ),
        ],
      ),
    );
  }
}
