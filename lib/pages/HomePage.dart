import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:panda/pages/login.dart';
import 'package:panda/pages/signup.dart';

import '../contect/image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03174C),
      body: Column(
        children: [
          Container(
            height: 503.h,
            width: 415.w,
            child: Stack(
              children: [
                Image.asset(ImagePath.backimg),
                Padding(
                    padding: EdgeInsets.only(top: 170.h, left: 30.w),
                    child: Image.asset(
                      ImagePath.homeimg,
                      height: 242.h,
                      width: 332.w,
                    )),
                SizedBox(
                  height: 300,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 430.h),
                  child: Image.asset(ImagePath.vect),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            child: Text(
              "We are what we do",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
              child: Container(
            child: Text(
              "Thousand of people are usign silent moon",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Color(0xffFFFFFF)),
            ),
          )),
          Container(
            child: Text(
              "for smalls meditation",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(Signup());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff8E97FD),
                  minimumSize: Size(374.w, 63.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Text(
                "SIGN UP",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ALREADY HAVE AN ACCOUNT?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xffFFFFFF)),
              ),
              InkWell(
                onTap: () {
                  Get.to(Login());
                },
                child: Text(
                  " LOG IN",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff8E97FD)),
                ),
              )
            ],
          )
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
