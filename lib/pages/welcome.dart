import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:panda/contect/image.dart';
import 'package:panda/pages/HomePage.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: [
            Image.asset(ImagePath.welcome),
            Padding(
              padding: EdgeInsets.only(left: 10.0,top: 30),
              child: IconButton(onPressed: (){Get.to(HomePage());
              }, icon: Icon(Icons.arrow_back),color: Colors.white,),
            ),
            Align(
              alignment: Alignment(0,0.81.h),
              child: ElevatedButton(
                    onPressed: () {
                      Get.to(Welcome());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEBEAEC),
                        maximumSize: Size(374.w, 63.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child:
                    Center(
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff3F414E)),
                      ),

                    )),
            ),
            Align(alignment:Alignment(0,0.97),
              child: Container(
              color: Color(0xff8C96FF),  height: 10.h,
              width: 300.w,),
            )
          ],
        ),

    );
  }
}
