import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_navigation/src/snackbar/snackbar_controller.dart';

class Config {
  static Widget setVisibility(bool icon) {
    return Icon(icon ? Icons.visibility : Icons.visibility_off);
  }

   static SnackbarController snackbar(
      String tittle, String subTittle, Color color) {
    return Get.snackbar(tittle, subTittle,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(30),
        backgroundColor: color);
  }
}
