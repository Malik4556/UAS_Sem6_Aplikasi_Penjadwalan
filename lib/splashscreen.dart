import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:flutter/animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Login(),
      duration: 5000,
      imageSize: 150,
      imageSrc: "images/kertajati.png",
      backgroundColor: Colors.white,
    );
  }
}
