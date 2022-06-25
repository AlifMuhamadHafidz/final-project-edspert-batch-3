import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_final_edspert_batch3/constants.dart';
import 'package:project_final_edspert_batch3/login_page.dart';
import 'package:project_final_edspert_batch3/main/latihan_soal/home_page.dart';
import 'package:project_final_edspert_batch3/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static String route = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        final user = FirebaseAuth.instance.currentUser;

        if (user != null) {
          // TODO redirect to register or home
          Navigator.of(context).pushReplacementNamed(MainPage.route);
        }
        Navigator.of(context).pushReplacementNamed(LoginPage.route);
      },
    );

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 159,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/splash_image.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
