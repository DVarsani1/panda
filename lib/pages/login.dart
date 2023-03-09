import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:panda/pages/signup.dart';

import '../contect/image.dart';
import 'HomePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03174C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 40.h),
            child: Container(
              height: 55.h,
              width: 55.w,
              decoration: BoxDecoration(
                color: Color(0xff03174C),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Image.asset(
                  ImagePath.back,
                  height: 15.h,
                  width: 15.w,
                ),
              ),
            ),
          ),
          Center(
              child: Container(
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              )),
          SizedBox(
            height: 23.h,
          ),
          Padding(
            padding:  EdgeInsets.all(10.0.w),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Signup());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8E97FD),
                      minimumSize: Size(374.w, 63.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset(ImagePath.f),
                      SizedBox(
                        width: 70.w,
                      ),
                      Center(
                        child: Text(
                          "CONTINUE WITH FACEBOOK",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Padding(
            padding:  EdgeInsets.all(10.0.w),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Signup());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize: Size(374.w, 63.h),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset(ImagePath.g),
                      SizedBox(
                        width: 70.w,
                      ),
                      Center(
                        child: Text(
                          "CONTINUE WITH GOOGLE",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height:23.h,
          ),
          Center(
              child: InkWell(
                child: Text(
                  "OR LOG IN WITH EMAIL",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              )),SizedBox(
            height:23.h,
          ),
          Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      maxLength: 50,
                      decoration: InputDecoration(
                          hintText: "Email adress",
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      maxLength: 50,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: "Password",
                          fillColor: Colors.white,
                          filled: true,
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                          )),

                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(10),

            child: ElevatedButton(
                onPressed: () {
                  Get.to(Signup());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8E97FD),
                    minimumSize: Size(374.w, 63.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child:
                Center(
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),

                )),
          ),

          Center(
            child: InkWell(
              onTap: (){},
              child: Text("Forgot Password?",style: TextStyle(color: Colors.white),),
            ),
          ),
          SizedBox(height: 105.h,),
          Center(
            child: InkWell(
              onTap: (){},
              child: Text("ALREADY HAVE AN ACCOUNT? SIGN UP",style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
