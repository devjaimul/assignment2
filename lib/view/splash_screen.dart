import 'dart:async';

import 'package:flutter/material.dart';
import 'package:photo_gallery/view/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {        //ai funtuction ta use kore kore prothom a spalsh splash screen dekhano hy
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      //pisoner kono page thakbe na ai page a akbr jayor por.ai page a jayor por r back kora jbe na

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen()),(route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Ink.image(
        // height: double.infinity,
        //fit: BoxFit.fitHeight,
        image: const AssetImage('assets/images/car_logo.webp'),      ),
    );
  }
}