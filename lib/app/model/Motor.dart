import 'package:cloud_firestore/cloud_firestore.dart';

class Motor {
  String? id;
  late String name;
  late String merk;
  late String tipe;
  late String cc;
  late String produksi;

  Motor({
    required this.id,
    required this.name,
    required this.merk,
    required this.tipe,
    required this.cc,
    required this.produksi,
  });

  Motor.fromMap({required DocumentSnapshot documentSnapshot}) {
    id = documentSnapshot.id;
    cc = documentSnapshot["cc"];
    merk = documentSnapshot["merk"];
    name = documentSnapshot["name"];
    produksi = documentSnapshot["produksi"];
    tipe = documentSnapshot["tipe"];
  }
}
