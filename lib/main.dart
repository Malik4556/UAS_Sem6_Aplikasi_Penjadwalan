import 'package:flutter/material.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/add.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/detail.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/edit.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/login.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/menu/about_menu.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/menu_bm.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/read.dart';
import 'package:uas_ppl_aplikasi_penjadwalan/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/add': (context) => const AddData(),
        '/read': (context) => const Read(),
        '/menu': (context) => const Menu(),
        '/detail': (context) => Detail(),
        '/edit': (context) => const Edit(),
        '/about': (context) => const AboutMenu(),
      },
    );
  }
}
