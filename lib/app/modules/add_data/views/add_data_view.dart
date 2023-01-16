

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_data_controller.dart';

class AddDataView extends GetView<AddDataController> {
  const AddDataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddDataView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Center(
          child: Column(children: [
            TextField(
              controller: controller.name,
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelText: "Nama Motor",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Masukan Motor"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.merk,
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelText: "Merk",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Masukan Merk"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.tipe,
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelText: "Tipe",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Masukan Tipe"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.cc,
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelText: "Jumlah CC",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Masukan CC"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.tahun,
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,
                  labelText: "Tahun Produksi",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Masukan Tahun Produksi"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  String name = controller.name.text.toString();
                  String merk = controller.merk.text.toString();
                  String tipe = controller.tipe.text.toString();
                  String cc = controller.cc.text.toString();
                  String tahun = controller.tahun.text.toString();
                  controller.postData(name, merk, tipe, cc, tahun);
                  print("$name, $merk, $tipe, $cc, $tahun");
                },
                child: Text("Tambah Data"))
          ]),
        ),
      ),
    );
  }
}
