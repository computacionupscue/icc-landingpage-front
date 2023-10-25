import 'dart:math' as math;
import 'package:flutter/material.dart';

class Responsive {
  Responsive._(BuildContext context) {
    Size size;
    size = MediaQuery.of(context).size;

    _height = size.height;
    _width = size.width;

    _diagonal = math.sqrt(math.pow(_height, 2) + math.pow(_width, 2));

    _portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    _paddingTop = MediaQuery.of(context).padding.top;

    _movil = _width < AppLayoutConst.kmovilwidth;
    _spaceAppBarFootBar = AppLayoutConst.kAppBarHeigth +
        (_movil
            ? AppLayoutConst.kfootbarHeightM
            : AppLayoutConst.kfootbarHeightD);
  }
  late double _width, _height, _diagonal;
  late bool _portrait;
  late bool _movil;

  late double _paddingTop;
  late double _paddingBottom;

  late double _spaceAppBarFootBar;

  // final double bottomNavigationBar =
  //     Platform.isAndroid ? kBottomNavigationBarHeight : 90;
  //Funcion estatica que retorna una isntancia de la clase Responsive
  static Responsive of(BuildContext context) => Responsive._(context);

  // static Responsive? _instance;

  // static Responsive instance(BuildContext context) =>
  //     _instance ??= Responsive._(context);

  double wp(double porcent) => _width * porcent / 100;
  double dp(double porcent) => _diagonal * porcent / 100;
  double hp(double porcent) => _height * porcent / 100;

  double hpa(double porcent, {bool home = true}) {
    final res = _height -
        _paddingTop -
        (home ? (_portrait ? 80 : 60) : 60) -
        (home ? 75 : 0);
    return res * porcent / 100;
  }

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  double get spaceAppbarFoobar => _spaceAppBarFootBar;

  double get paddingTop => _paddingTop;
  double get paddingBottom => _paddingBottom;

  bool get portrait => _portrait;

  bool get movil => _movil;
}

class AppLayoutConst {
  // const AppLayoutConst._();

  /// Desktop screen >= 900px
  static const double kmovilwidth = 640;

  // Spacing
  /// Space Zero = 0.0
  static const double spaceZero = 0;

  /// Space XS = 2.0
  static const double spaceXS = 2;

  /// Space S = 4.0
  static const double spaceS = 4;

  /// Space M = 8.0
  static const double spaceM = 8;

  /// Space L = 16.0
  static const double spaceL = 16;

  /// Space XL = 32.0
  static const double spaceXL = 32;

  // Margin
  /// Margin Zero = 0.0
  static const double marginZero = 0;

  /// Margin XS = 2.0
  static const double marginXS = 2;

  /// Margin S = 4.0
  static const double marginS = 4;

  /// Margin M = 8.0
  static const double marginM = 8;

  /// Margin L = 16.0
  static const double marginL = 16;

  /// Margin XL = 32.0
  static const double marginXL = 32;

  // Padding
  /// Padding Zero = 0.0
  static const double paddingZero = 0;

  /// Padding XS = 2.0
  static const double paddingXS = 2;

  /// Padding S = 4.0
  static const double paddingS = 4;

  /// Padding M = 8.0
  static const double paddingM = 8;

  /// Padding L = 16.0
  static const double paddingL = 16;

  /// Padding XL = 32.0
  static const double paddingXL = 32;

  ///[ components]
  static const double kfootbarHeightM = 60;
  static const double kfootbarHeightD = 80;
  static const double kAppBarHeigth = 65;
}
