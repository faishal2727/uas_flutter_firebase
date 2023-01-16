import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController tfPassword = TextEditingController();
  TextEditingController tfEmail = TextEditingController();

  @override
  void onClose() {
    tfPassword.dispose();
    tfEmail.dispose();
    super.onClose();
  }
}
