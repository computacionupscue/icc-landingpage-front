import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get light {
    // final ThemeData baseTheme = ThemeData.light();
    // return baseTheme.copyWith(
    // );

    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: AppColors.primaryBlueMaterial,
        dividerColor: ThemeData().dividerColor,
        expansionTileTheme: const ExpansionTileThemeData()
            .copyWith(collapsedIconColor: AppColors.primaryBlue),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 22,
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16),
          bodySmall: TextStyle(fontSize: 14),
          labelLarge: TextStyle(
            fontSize: 16,
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: TextStyle(
            fontSize: 14,
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            fontSize: 12,
            color: AppColors.primaryBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme().copyWith(
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
          ),
          helperStyle: const TextStyle(
            fontSize: 4,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
          labelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
          ),
        ),
        appBarTheme: const AppBarTheme(
            color: AppColors.primaryBlue,
            iconTheme: IconThemeData(color: Colors.white)),
        fontFamily: 'Roboto',
        splashColor: AppColors.primaryBlue.withOpacity(0.05),
        cardTheme: const CardTheme().copyWith(
          surfaceTintColor: Colors.white,
        ),
        tabBarTheme: const TabBarTheme(
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        drawerTheme: const DrawerThemeData(
          surfaceTintColor: Colors.white,
        ));
  }

  static ThemeData get dark {
    return ThemeData.dark(
      useMaterial3: true,

      // colorSchemeSeed: AppColors.primaryBlueMaterial,
    ).copyWith(
      // brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: AppColors.primaryBlueMaterial,
        accentColor: AppColors.primaryBlue,
      ),

      dividerTheme: DividerThemeData(color: Colors.grey.withOpacity(0.5)),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Colors.white),
        fillColor: MaterialStateProperty.all(Colors.grey),
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        textColor: Colors.white,
        iconColor: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme().copyWith(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        helperStyle: const TextStyle(
          fontSize: 4,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
        ),
        labelStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Roboto',
        ),
        floatingLabelStyle: const TextStyle(color: Colors.white),
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
        ),
        bodyMedium: TextStyle(fontSize: 16),
        bodySmall: TextStyle(fontSize: 14),
        labelSmall: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
