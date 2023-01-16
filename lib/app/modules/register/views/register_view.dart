import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:latihan_firebase/app/controllers/auth_controller.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final authC = Get.find<AuthController>();

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
              "Daftar Akun mu",
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
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
                onPressed: () => authC.signup(
                    controller.tfEmail.text, controller.tfPassword.text),
                child: Text('Daftar'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Text("Sudah Punya Akun ?"),
                    TextButton(onPressed: () => Get.back(), child: Text("Login"))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
