import 'package:flutter/material.dart';
import 'package:landing_page/src/shared/responsive.dart';
import 'package:landing_page/app/config/app_config.dart';

class FormularioPage extends StatelessWidget {
  const FormularioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive re = Responsive.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: AppLayoutConst.marginM),
              height: re.hp(15),
              width: re.hp(220),
              color: AppColors.primaryBlue,
              padding: const EdgeInsets.all(AppLayoutConst.marginL),
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.upsLogoWhite,
                      height: re.hp(10),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                    ),
                    Text(
                      'Formulario de Registro',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: AppLayoutConst.marginXL),
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
                    width: 585,
                    margin:
                        const EdgeInsets.only(bottom: AppLayoutConst.marginM),
                    child: const TextField(
                      decoration: InputDecoration(
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
                    width: 585,
                    margin:
                        const EdgeInsets.only(bottom: AppLayoutConst.marginS),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
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
                  margin: const EdgeInsets.only(top: AppLayoutConst.marginL),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryBlueMaterial,
                        foregroundColor: Colors.black,
                        fixedSize: const Size(250, 40)),
                    onPressed: () {},
                    child: const Text("Siguiente",
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: AppColors.primaryBlueMaterial,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
