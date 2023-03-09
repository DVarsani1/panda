import 'dart:async';

import 'package:flutter/material.dart';
import 'package:panda/contect/image.dart';
import 'package:panda/pages/Splash2.dart';
import 'package:get/get.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
 void initState(){
    super.initState();
    Timer(Duration(seconds: 3),() {
      Get.offAll(()=>Splash2());
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height:double.infinity,child: Image.asset(ImagePath.splash,fit: BoxFit.fill,)),
    );
  }
}
