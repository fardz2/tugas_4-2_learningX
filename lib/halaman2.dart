import 'package:flutter/material.dart';
import 'package:flutter_application_tugas4_2/halaman3.dart';
import 'package:get/get.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("kembali")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const Halaman3());
                },
                child: const Text("Selanjutnya")),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Halaman 2", "Ini halaman 2");
                },
                child: const Text("Tampilkan snackbar")),
          ],
        ),
      ),
    );
  }
}
