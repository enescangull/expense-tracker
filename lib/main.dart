import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var seedColor = const Color.fromARGB(255, 63, 147, 191);
var kColorScheme = ColorScheme.fromSeed(seedColor: seedColor);

var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.dark);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
          ),
        ),
        datePickerTheme: const DatePickerThemeData().copyWith(
          headerBackgroundColor: kDarkColorScheme.primaryContainer,
          headerForegroundColor: kDarkColorScheme.onPrimaryContainer,
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.secondaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 16,
            )),
        datePickerTheme: DatePickerThemeData().copyWith(
          headerBackgroundColor: kColorScheme.primaryContainer,
          headerForegroundColor: kColorScheme.onPrimaryContainer,
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    ),
  );
}
