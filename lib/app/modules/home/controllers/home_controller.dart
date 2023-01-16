import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:latihan_firebase/app/routes/app_pages.dart';
import '../../../model/Motor.dart';

class HomeController extends GetxController {
  RxList<Motor> motor = RxList<Motor>([]);
  final firebaseFireStore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;

  @override
  void onInit() {
    collectionReference = firebaseFireStore.collection('mymotor');
    motor.bindStream(readData());
    super.onInit();
    print("motor $motor");
  }


  Stream<List<Motor>> readData() {
    return collectionReference.snapshots().map((datas) => datas.docs
        .map((motor) => Motor.fromMap(documentSnapshot: motor))
        .toList());
  }

    void deleteData(String? id) {
    collectionReference.doc(id).delete().whenComplete(() {
      print("Sukses Hapus");
      Get.toNamed(Routes.HOME);
    });
  }



}
