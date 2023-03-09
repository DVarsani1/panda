import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panda/contect/image.dart';
import 'package:get/get.dart';
import 'package:panda/pages/HomePage.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),() {
      Get.offAll(()=>HomePage());
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: 896.h,
            width:418.w ,
            child: Image.asset(ImagePath.splash2,fit: BoxFit.fill,),
          ),


    );
  }
}
