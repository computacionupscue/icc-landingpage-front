// import 'dart:io';

// import 'package:another_flushbar/flushbar.dart';
// import 'package:flutter/material.dart';
// import 'package:ups_app/app/config/router/screens/web_view_page.dart';
// import 'package:ups_app/app/config/theme/app_colors.dart';
// import 'package:ups_app/features/shared/responsive.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../../home/presentation/bloc/home/home_bloc.dart';

// class UtilsFunctionsViews {
//   static Future<void> openInWebview(BuildContext context, String url) async {
//     // final uri = Uri.parse(url);
//     // if (await canLaunchUrl(uri)) {

//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) {
//           return WebViewPage(
//             url: url,
//           );
//         },
//       ),
//     );
//   }

//   static Future<void> launchInBrowser(Uri url) async {
//     if (!await launchUrl(
//       url,
//       mode: LaunchMode.externalApplication,
//     )) {
//       throw 'Could not launch $url';
//     }
//   }

//   static Future<bool> Function()? returnHomePanel(homeBloc) {
//     if (Platform.isIOS) {
//       return null;
//     }

//     return () async {
//       homeBloc.add(const HomeDrawerDestinationSelected(value: 0));
//       return true;
//     };
//   }

//   /// TODO: ERROR: manage muti press OK
//   static Flushbar<dynamic> showFlushBar({
//     required String mensajeError,
//     required VoidCallback onPressed,
//     bool isError = true,
//   }) {
//     return Flushbar(
//       message: mensajeError,
//       duration: const Duration(seconds: 2),
//       backgroundColor: Colors.black.withOpacity(0.5),
//       barBlur: 10,
//       margin: const EdgeInsets.all(AppLayoutConst.marginM)
//           .copyWith(bottom: AppLayoutConst.marginL),
//       borderRadius: BorderRadius.circular(8),
//       mainButton: TextButton(
//         style: TextButton.styleFrom(
//           foregroundColor: Colors.red,

//           // onPrimary: onPrimary,
//           shadowColor: AppColors.secondaryBlue,
//           // shape: shape ??
//           //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
//         ),
//         onPressed: onPressed,
//         child: const Text(
//           'OK',
//           style: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//       ),
//       leftBarIndicatorColor: isError ? Colors.red : null,
//       // dismissDirection: ,
//     );
//   }

//   static InputDecoration buildInputDecoration({
//     String? label,
//     String? hint,
//     IconData? icon,
//     String? error,
//   }) =>
//       InputDecoration(
//         // border: const OutlineInputBorder(
//         //   borderSide: BorderSide(color: Colors.grey),
//         // ),
//         // focusedBorder: OutlineInputBorder(
//         //   borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
//         // ),
//         // enabledBorder: OutlineInputBorder(
//         //   borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
//         // ),
//         helperStyle: const TextStyle(
//           fontSize: 4,
//           fontWeight: FontWeight.bold,
//         ),
//         errorText: error,
//         labelText: label,
//         hintText: hint,
//         prefixIcon: icon != null ? Icon(icon) : null,
//       );
// }
