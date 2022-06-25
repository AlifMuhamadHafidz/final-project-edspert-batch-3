import 'package:flutter/material.dart';
import 'package:project_final_edspert_batch3/login_page.dart';
import 'package:project_final_edspert_batch3/main/latihan_soal/mapel_page.dart';
import 'package:project_final_edspert_batch3/main/latihan_soal/paket_soal_page.dart';
import 'package:project_final_edspert_batch3/main_page.dart';

import 'package:project_final_edspert_batch3/splash_page.dart';

import 'register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Soal',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        LoginPage.route: (context) => LoginPage(),
        RegisterPage.route: (context) => RegisterPage(),
        MainPage.route: (context) => MainPage(),
        MapelPage.route: (context) => MapelPage(),
        PaketSoalPage.route: (context) => PaketSoalPage(),
      },
    );
  }
}
