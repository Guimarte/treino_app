import 'package:flutter/material.dart';
import 'package:treino_app/core/shared/utils/colors_app.dart';

class ThemeApp extends ColorsApp {
  ThemeData themeData = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsApp.backgroundColor,
      titleTextStyle: TextStyle(
        color: ColorsApp.textColor,
      ),
      iconTheme: IconThemeData(
        color: ColorsApp.iconColor,
      ),
      actionsIconTheme: IconThemeData(
        color: ColorsApp.iconColor,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorsApp.textColor, // Definindo a cor do cursor
    ),
    buttonTheme: const ButtonThemeData(),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(color: Color(0xFFFFFFFF)),
      hintStyle: const TextStyle(color: Color(0xFFFFFFFF)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: ColorsApp.inputColor),
      ),
      focusColor: ColorsApp.inputColor,
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsApp.inputColor, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(4))),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: const BorderSide(color: ColorsApp.inputColor, width: 2),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        circularTrackColor: ColorsApp.progressColor),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      backgroundColor: ColorsApp.backgroundColor, // Cor de fundo do TextButton
    )),
    dialogTheme: const DialogTheme(
        backgroundColor: ColorsApp.backgroundColor,
        titleTextStyle: TextStyle(color: ColorsApp.textColor)),
    dropdownMenuTheme: const DropdownMenuThemeData(
        menuStyle: MenuStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.black)),
        inputDecorationTheme: InputDecorationTheme(
            helperStyle: TextStyle(color: Color(0xFFFFFFFF))),
        textStyle: TextStyle(color: Color(0xFFFFFFFF))),
    scaffoldBackgroundColor: ColorsApp.backgroundColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(16),
        ),
        foregroundColor:
            WidgetStateProperty.all<Color>(const Color(0xFFFFFFFF)),
        textStyle: const WidgetStatePropertyAll<TextStyle>(
          TextStyle(
            color: ColorsApp.textColor,
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll<Color>(
          ColorsApp.elevatedButtonColor,
        ),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
            side: const BorderSide(
                color: Colors.black), // Definindo a cor da borda
          ),
        ),
      ),
    ),
    cardColor: ColorsApp.cardColor,
    cardTheme: const CardTheme(
      color: ColorsApp.cardColor,
    ),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      displayLarge: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      displaySmall: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      bodyLarge: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      bodyMedium: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      bodySmall: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      headlineLarge: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      headlineMedium: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      headlineSmall: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      labelLarge: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      labelMedium: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      labelSmall: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      titleLarge: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      titleMedium: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      titleSmall: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
    ),
  );
}
