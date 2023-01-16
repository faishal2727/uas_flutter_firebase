import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_firebase/app/controllers/auth_controller.dart';
import 'package:latihan_firebase/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/image/logo.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selamat Datang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Email:"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                controller: controller.tfEmail,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    hintText: "Masukan Email"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Password :"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                controller: controller.tfPassword,
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white,
                    labelText: "Password",
                    prefixIcon: Icon(Icons.key),
                    hintText: "Masukan Password"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 70,
              height: 30,
              child: ElevatedButton(
                onPressed: () => authCon.login(
                    controller.tfEmail.text, controller.tfPassword.text),
                child: Text('Login'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Text("Belum Punya Akun ?"),
                      TextButton(
                          onPressed: () => Get.toNamed(Routes.REGISTER),
                          child: Text("Daftar"))
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
