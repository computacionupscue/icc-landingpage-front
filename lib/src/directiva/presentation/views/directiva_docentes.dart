import 'package:flutter/material.dart';
import 'package:landing_page/app/config/router/app_routes_assets.dart';
import 'package:landing_page/app/config/theme/app_colors.dart';
import 'package:landing_page/src/shared/custom_directiva_box.dart';
import 'package:landing_page/src/shared/responsive.dart';

class Docentes extends StatelessWidget {
  const Docentes({
    super.key,
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return re.width < 1160 ? _MobileModel(re: re) : _DesktopModel(re: re);
  }
}

class _DesktopModel extends StatelessWidget {
  const _DesktopModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: re.hp(10)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: re.hp(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Docentes",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDirectivaBox(
                  nombre: "ARCE CUESTA DIANA CAROLINA",
                  cargo: "Docente",
                  correo: "darcec@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "ARCOS ARGUDO MIGUEL ARTURO",
                  cargo: "Docente",
                  correo: "marcos@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "BOJORQUE CHASI RODOLFO XAVIER",
                  cargo: "Docente",
                  correo: "rbojorque@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "BRAVO QUEZADA OMAR GUSTAVO",
                  cargo: "Docente",
                  correo: "obravo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
            ],
          ),
          SizedBox(
            height: re.hp(10),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDirectivaBox(
                  nombre: "FLORES VAZQUEZ MARCELO ESTEBAN",
                  cargo: "Docente",
                  correo: "mfloresv@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "HURTADO ORTIZ REMIGIO ISMAEL",
                  cargo: "Docente",
                  correo: "rhurtadoo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "LEON PAREDES GABRIEL ALEJANDRO",
                  cargo: "Docente",
                  correo: "gleon@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "ORDOÑEZ ORDOÑEZ JORGE OSMANI",
                  cargo: "Docente",
                  correo: "jordonezo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
            ],
          ),
          SizedBox(
            height: re.hp(10),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDirectivaBox(
                  nombre: "ORTIZ OCHOA MAURICIO SERGIO",
                  cargo: "Docente",
                  correo: "mortizo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "PARRA GONZALEZ GERMAN ERNESTO",
                  cargo: "Docente",
                  correo: "gparra@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "PLAZA CORDERO ANDREA MARICELA",
                  cargo: "Docente",
                  correo: "aplaza@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "ROBLES BYKBAEV VLADIMIR ESPARTACO",
                  cargo: "Docente",
                  correo: "vrobles@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
            ],
          ),
          SizedBox(
            height: re.hp(10),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomDirectivaBox(
                  nombre: "SACOTO CABRERA ERWIN JAIRO",
                  cargo: "Docente",
                  correo: "esacoto@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "TACURI CAPELO BERTHA KATERINE",
                  cargo: "Docente",
                  correo: "btacuri@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "TIMBI SISALIMA CRISTIAN FERNANDO",
                  cargo: "Docente",
                  correo: "ctimbi@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              CustomDirectivaBox(
                  nombre: "VAZQUEZ LOAIZA JUAN PABLO",
                  cargo: "Docente",
                  correo: "jvazquez@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
            ],
          ),
          SizedBox(
            height: re.hp(10),
          ),
          Row(
            children: [
              SizedBox(
                width: re.hp(9),
              ),
              const CustomDirectivaBox(
                  nombre: "YEPEZ ALULEMA JENNIFER ANDREA",
                  cargo: "Docente",
                  correo: "jyepez@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0")
            ],
          ),
        ],
      ),
    );
  }
}

class _MobileModel extends StatelessWidget {
  const _MobileModel({
    required this.re,
  });

  final Responsive re;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: re.hp(10)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: re.hp(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Docentes",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryBlue)),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomDirectivaBox(
                  nombre: "ARCE CUESTA DIANA CAROLINA",
                  cargo: "Docente",
                  correo: "darcec@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "ARCOS ARGUDO MIGUEL ARTURO",
                  cargo: "Docente",
                  correo: "marcos@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "BOJORQUE CHASI RODOLFO XAVIER",
                  cargo: "Docente",
                  correo: "rbojorque@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "BRAVO QUEZADA OMAR GUSTAVO",
                  cargo: "Docente",
                  correo: "obravo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "FLORES VAZQUEZ MARCELO ESTEBAN",
                  cargo: "Docente",
                  correo: "mfloresv@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "HURTADO ORTIZ REMIGIO ISMAEL",
                  cargo: "Docente",
                  correo: "rhurtadoo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "LEON PAREDES GABRIEL ALEJANDRO",
                  cargo: "Docente",
                  correo: "gleon@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "ORDOÑEZ ORDOÑEZ JORGE OSMANI",
                  cargo: "Docente",
                  correo: "jordonezo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "ORTIZ OCHOA MAURICIO SERGIO",
                  cargo: "Docente",
                  correo: "mortizo@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "PARRA GONZALEZ GERMAN ERNESTO",
                  cargo: "Docente",
                  correo: "gparra@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "PLAZA CORDERO ANDREA MARICELA",
                  cargo: "Docente",
                  correo: "aplaza@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "ROBLES BYKBAEV VLADIMIR ESPARTACO",
                  cargo: "Docente",
                  correo: "vrobles@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "SACOTO CABRERA ERWIN JAIRO",
                  cargo: "Docente",
                  correo: "esacoto@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "TACURI CAPELO BERTHA KATERINE",
                  cargo: "Docente",
                  correo: "btacuri@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "TIMBI SISALIMA CRISTIAN FERNANDO",
                  cargo: "Docente",
                  correo: "ctimbi@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "VAZQUEZ LOAIZA JUAN PABLO",
                  cargo: "Docente",
                  correo: "jvazquez@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0"),
              SizedBox(
                height: re.hp(7),
              ),
              const CustomDirectivaBox(
                  nombre: "YEPEZ ALULEMA JENNIFER ANDREA",
                  cargo: "Docente",
                  correo: "jyepez@ups.edu.ec",
                  foto: AppAssets.usuariodef,
                  id: "0")
            ],
          ),
        ],
      ),
    );
  }
}
