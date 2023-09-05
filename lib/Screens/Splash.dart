import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:device_preview/device_preview.dart';
import 'package:my_todo/Screens/Intro_%20Screens/Onboarding_1.dart';


class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Onboarding_1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 300,
          width: 300,
          child: Lottie.asset("assets/animations/animation_lksw8o83.json",fit: BoxFit.fill)),
    );
  }
}
