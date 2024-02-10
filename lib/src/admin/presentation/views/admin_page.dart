import 'package:flutter/material.dart';
import 'package:landing_page/app/config/app_config.dart';
import 'package:landing_page/src/admin/presentation/views/admin_body.dart';
import 'package:landing_page/src/admin/presentation/views/admin_head.dart';
import 'package:landing_page/src/shared/home_footer.dart';
import 'package:landing_page/src/shared/menu_admin.dart';
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MenuAdmin(re: re),
                SizedBox(height: re.hp(8)),
                AdminHead(re: re),
                SizedBox(height: re.hp(5)),
                AdminBody(re: re),
                SizedBox(height: re.hp(10)),
                Footer(re: re)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
