import 'package:flutter/material.dart';
import 'package:imc/ui/android/pages/home.pages.dart';
import 'package:imc/widget/flat.button.style.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMC',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ).copyWith(
        textButtonTheme: TextButtonThemeData(style: flatButtonStyle),
      ),
      home: const HomePage(),
    );
  }
}
