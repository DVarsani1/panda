import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:panda/contect/image.dart';
import 'package:panda/pages/HomePage.dart';
import 'package:panda/pages/welcome.dart';
import 'package:panda/services/firebase_auth_methods.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  // void signUpUser() async {
  //   FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEamil(
  //       email: emailController.text,
  //       password: passwordController.text,
  //       context: context);
  // }

  bool value1 = false;

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
              'Create your account ',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )),
          SizedBox(
            height: 23.h,
          ),
          Padding(
            padding: EdgeInsets.all(10.0.w),
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
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.all(10.0.w),
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
            height: 23.h,
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
          )),
          SizedBox(
            height: 23.h,
          ),
          Form(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0.w,
                  right: 10.w,
                  bottom: 5,
                ),
                child: TextFormField(
                  maxLength: 50,
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Name",
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
                padding: EdgeInsets.only(
                  left: 10.0.w,
                  right: 10.w,
                  bottom: 5,
                ),
                child: TextFormField(
                  controller: emailController,
                  maxLength: 50,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Email adress",
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
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0.w,
                  right: 10.w,
                  bottom: 5,
                ),
                child: TextFormField(
                  controller: passwordController,
                  maxLength: 50,
                  decoration: InputDecoration(
                      hintText: "Password",
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
            ],
          )),
          SizedBox(
            height: 8.h,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  "i have read the",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Privace Policy",
                  style: TextStyle(color: Color(0xff7583CA)),
                ),
                SizedBox(
                  width: 150.w,
                ),
                Checkbox(
                  value: this.value1,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value1 = value!;
                    });
                  },
                  checkColor: Colors.white,
                  activeColor: Color(0xff8E97FD),
                  side: BorderSide(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: ()async {
                  //signUpUser();
                  bool status = await FirebaseAuthService.signUp(email: emailController.text, password: passwordController.text, context: context, name: nameController.text) ;

                  if(status == true){
                    Get.to(()=>Welcome());
                  }
                  else{

                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8E97FD),
                    minimumSize: Size(374.w, 63.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
