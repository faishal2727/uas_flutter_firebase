import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan_firebase/app/routes/app_pages.dart';

class UpdateDataController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController merk = TextEditingController();
  TextEditingController tipe = TextEditingController();
  TextEditingController cc = TextEditingController();
  TextEditingController produksi = TextEditingController();
  late CollectionReference collectionReference;

  Rx<String> named = ''.obs;
  Rx<String> merkd = ''.obs;
  Rx<String> produksid = ''.obs;
  Rx<String> ccd = ''.obs;
  Rx<String> tiped = ''.obs;
  final data = Get.arguments;

  @override
  void onInit() {
    collectionReference = FirebaseFirestore.instance.collection('mymotor');
    name.addListener(() {
      named.value = name.text;
    });
    merk.addListener(() {
      merkd.value = merk.text;
    });
    produksi.addListener(() {
      produksid.value = produksi.text;
    });
    tipe.addListener(() {
     tiped.value = tipe.text;
    });
    cc.addListener(() {
     ccd.value = cc.text;
    });
    print("aaa $named $name");
    super.onInit();
  }

  

   void updateData(String id, String name, String merk, String tipe, String cc,
      String produksi) {
    collectionReference.doc(id).update({
      'name': name,
      'merk': merk,
      'tipe': tipe,
      'cc': cc,
      'produksi': produksi
    }).whenComplete(() {
      Get.offAllNamed(Routes.HOME);
      print("Sukses");
    });
  }
}
