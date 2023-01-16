import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan_firebase/app/routes/app_pages.dart';

import '../../../model/Motor.dart';
import '../../../utils/Config.dart';

class AddDataController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController merk = TextEditingController();
  TextEditingController tipe = TextEditingController();
  TextEditingController cc = TextEditingController();
  TextEditingController tahun = TextEditingController();

final  firebaseFireStore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  
  @override
  void onInit() {
    collectionReference = firebaseFireStore.collection('mymotor');
    super.onInit();
  }

  void postData(
      String name, String merk, String tipe, String cc, String produksi) {
        collectionReference.add({
          'name': name,
          'merk': merk,
          'tipe': tipe,
          'cc': cc,
          'produksi': produksi
        }).whenComplete((){
          Config.snackbar("Success", "Tambah Data", Colors.green);
          print("Suksses");
          Get.toNamed(Routes.HOME);
        }).catchError((e) => print("error $e"));
      }
}
