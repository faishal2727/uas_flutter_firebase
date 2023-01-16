import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_firebase/app/controllers/auth_controller.dart';
import 'package:latihan_firebase/app/model/Motor.dart';
import 'package:latihan_firebase/app/modules/update_data/controllers/update_data_controller.dart';
import 'package:latihan_firebase/app/modules/update_data/views/update_data_view.dart';
import 'package:latihan_firebase/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  final update = Get.find<UpdateDataController>();

  @override
  Widget build(BuildContext context) {
    print("============/ ${controller.motor.length}");
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('HomeView'),
        //   actions: [
        //     IconButton(
        //         onPressed: () => authC.logout(), icon: const Icon(Icons.logout))
        //   ],
        // ),
        body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Obx(
              () => ListView.builder(
                itemCount: controller.motor.length.toInt(),
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                        children: [
                          Text(
                            "Nama Motor:",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            controller.motor[index].name,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Merk:",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            controller.motor[index].merk,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Tahun Produksi:",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            controller.motor[index].produksi,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Tipe:",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            controller.motor[index].tipe,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Jumlah CC:",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            controller.motor[index].cc,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () => {
                          print(controller.motor[index].id),
                          controller.deleteData(controller.motor[index].id)
                        },
                        child: Text(
                          "Hapus",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ),
                      TextButton(
                        onPressed: () => {
                          Get.to(UpdateDataView(id: controller.motor[index].id)),
                          update.name.text = controller.motor[index].name,
                          update.merk.text = controller.motor[index].merk,
                          update.cc.text = controller.motor[index].cc,
                          update.produksi.text = controller.motor[index].produksi,
                          update.tipe.text = controller.motor[index].tipe,
                        
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(fontSize: 18, color: Colors.amber),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            )),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => Get.toNamed(Routes.ADD_DATA),
        //   child: Icon(Icons.add),
        // ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () => Get.toNamed(Routes.ADD_DATA),
                child: Icon(Icons.add),
                heroTag: "fab1",
              ),
            ),
            FloatingActionButton(
              onPressed: () => authC.logout(),
              child: Icon(Icons.logout),
              backgroundColor: Colors.red,
              heroTag: "fab2",
            ),
          ]),
        ));
  }
}
