
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panda/contect/image.dart';
import 'package:get/get.dart';

import 'Splash3.dart';
class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),() {
      Get.offAll(()=>Splash3());
    },);
  }
  @override
  Widget build(BuildContext context) {

    double totalHeight=896;
    final height = MediaQuery.of(context).size.height/totalHeight;


    return Scaffold(
      backgroundColor: Color(0xff03174C),
      body: Column(
            children: [
              Container(height: 503.h,width: 415.w,child:
                  Stack(
                    children: [
                      Image.asset(ImagePath.backimg),
                      Padding(padding:EdgeInsets.only(top: 170.h,left: 30.w),child: Image.asset(ImagePath.homeimg,height:242.h ,width: 332.w,)),
                      SizedBox(height: 300,),
                      Padding(
                        padding:  EdgeInsets.only(top: 430.h),
                        child: Image.asset(ImagePath.vect),
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 150.h,),
              Container(child: Text("We are what we do",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Color(0xffFFFFFF)),),),
              SizedBox(height: 15.h,),
              Center(child: Container(child: Text("Thousand of people are usign silent moon",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16,color: Color(0xffFFFFFF)),),)),
              Container(child: Text("for smalls meditation",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16,color: Color(0xffFFFFFF)),),),

            ],
          ),

          // Center(
          //   child: Container(
          //     height: 100*height,
          //     width: 50*height,
          //     color: Colors.blue,
          //   ),
          // )
    );
  }
}
