// import'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import '../utils/showSnackBar.dart';
//
// class FirebaseAuthMethods{
//   final FirebaseAuth _auth;
//   FirebaseAuthMethods(this._auth);
//
//
//   // EMAIL SIGN UP
//
//   Future<void> signUpWithEamil({
//     required String email,
//     required String password,
//     //required String name,
//     required BuildContext context,
//
// })async {
//     try{
//       await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       await sendEmailVerification(context);
//     }on FirebaseAuthException catch(e){
//       showSnackBar(context,e.message!);
//     }
//   }
//
//   // EMAIL VERIFICATION
//
//   Future<void> sendEmailVerification(BuildContext context)async {
//     try{
//       _auth.currentUser!.sendEmailVerification();
//       showSnackBar(context, 'Email Verification sent! ');
//     }on FirebaseAuthException catch(e){
//       showSnackBar(context, e.message!);
//     }
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class FirebaseAuthService {

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
      {required BuildContext context, required String title}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(title),
      ),
    );
  }

  static Future<bool> signUp(
      {required String email,
        required String password,
        required String name,
        required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'network-request-failed') {
        print('ERROR CREATE ON SIGN UP TIME == No Internet Connection.');
        showSnackBar(context: context, title: "No Internet Connection.");
      } else if (e.code == 'too-many-requests') {
        print(
            'ERROR CREATE ON SIGN UP TIME == Too many attempts please try later');
        showSnackBar(
            context: context, title: "Too many attempts please try later.");
      } else if (e.code == 'weak-password') {
        print(
            'ERROR CREATE ON SIGN UP TIME == The password provided is too weak.');
        showSnackBar(
            context: context, title: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        print(
            'ERROR CREATE ON SIGN UP TIME == The account already exists for that email.');
        showSnackBar(
            context: context,
            title: "The account already exists for that email.");
      } else if (e.code == 'invalid-email') {
        print(
            'ERROR CREATE ON SIGN UP TIME == The email address is not valid.');
        showSnackBar(
            context: context, title: "The email address is not valid.");
      } else if (e.code == 'weak-password') {
        print(
            'ERROR CREATE ON SIGN UP TIME == The password is not strong enough.');
        showSnackBar(
            context: context, title: "The password is not strong enough.");
      } else {
        print('ERROR CREATE ON SIGN IN TIME ==  Something went to Wrong.');
        showSnackBar(context: context, title: "Something went to wrong.");
      }
      return false;
    }
  }

  static Future<bool> login(
      {required String email,
        required String password,
        required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'network-request-failed') {
        print('ERROR CREATE ON SIGN IN TIME == No Internet Connection.');

        showSnackBar(context: context, title: "No Internet Connection.");
      } else if (e.code == 'too-many-requests') {
        print(
            'ERROR CREATE ON SIGN IN TIME == Too many attempts please try later');
        showSnackBar(
            context: context, title: "Too many attempts please try later.");
      } else if (e.code == 'user-not-found') {
        print('ERROR CREATE ON SIGN IN TIME == No user found for that email.');

        showSnackBar(context: context, title: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        print(
            'ERROR CREATE ON SIGN IN TIME == The password is invalid for the given email.');
        showSnackBar(
            context: context,
            title: "The password is invalid for the given email.");
      } else if (e.code == 'invalid-email') {
        print(
            'ERROR CREATE ON SIGN IN TIME == The email address is not valid.');
        showSnackBar(
            context: context, title: "The email address is not valid.");
      } else if (e.code == 'user-disabled') {
        print(
            'ERROR CREATE ON SIGN IN TIME ==  The user corresponding to the given email has been disabled.');
        showSnackBar(
            context: context,
            title:
            "The user corresponding to the given email has been disabled.");
      } else {
        print('ERROR CREATE ON SIGN IN TIME ==  Something went to Wrong.');
        showSnackBar(context: context, title: "Something went to wrong.");
      }
      return false;
    }
  }
}
