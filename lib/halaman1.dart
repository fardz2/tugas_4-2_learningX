import 'package:flutter/material.dart';
import 'package:flutter_application_tugas4_2/halaman2.dart';
import 'package:flutter_application_tugas4_2/mainController.dart';
import 'package:get/get.dart';

class Halaman1 extends StatelessWidget {
  MainController controller = Get.put(MainController());

  Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const Halaman2());
                },
                child: const Text("Selanjutnya")),
            ElevatedButton(
                onPressed: () => controller.ubahHuruf(),
                child: Obx(() => Text(
                    "Ubah Text ke ${controller.text.value == controller.text.value.toLowerCase() ? "UpperCase" : "LowerCase"}"))),
            Obx(() => Text(controller.text.value))
          ],
        ),
      ),
    );
  }
}
