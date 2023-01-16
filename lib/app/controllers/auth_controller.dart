import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_firebase/app/routes/app_pages.dart';

import '../utils/Config.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Config.snackbar("Hai...", "Selamat Datang", Colors.green);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Config.snackbar(
            "Ada yang tidak beres", "no user for that email", Colors.red);
        print("no user for that email");
      } else if (e.code == 'wrong-password') {
        Config.snackbar(
            "Ada yang tidak beres", "password salah", Colors.red);
        print("password salah");
      }
    }
  }

  void signup(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed(Routes.LOGIN);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Config.snackbar(
            "Ada yang tidak beres", "The password is to weak", Colors.red);
        print("The password is to weak");
      } else if (e.code == 'email-already-in-use') {
         Config.snackbar(
            "Ada yang tidak beres", "The account already exists fot that email", Colors.red);
        print('The account already exists fot that email');
      }
    } catch (e) {
      print(e);
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Config.snackbar("Bye", "Sampai Jumpa Kembali", Colors.green);
    print("Suksses");
    Get.offAllNamed(Routes.LOGIN);
  }
}
