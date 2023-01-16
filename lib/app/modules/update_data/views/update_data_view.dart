import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_data_controller.dart';

class UpdateDataView extends GetView<UpdateDataController> {
 
 final String? id;
  

  const UpdateDataView(
      {Key? key,required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateDataView'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
             TextField(
              controller: controller.name,
              decoration: const InputDecoration(
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
              controller: controller.produksi,
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
                onPressed: (){
                  String name = controller.name.text.toString();
                  String merk = controller.merk.text.toString();
                  String tipe = controller.tipe.text.toString();
                  String cc = controller.cc.text.toString();
                  String tahun = controller.produksi.text.toString();
                  if(id != null){
                    controller.updateData(this.id.toString(),name, merk, tipe, cc, tahun);
                  }else{
                    print("null kontol");
                  }
                  
                },
                child: Text(
                  "Update Data",
                ))
          ]),
        ),
      ),
    );
  }
}
