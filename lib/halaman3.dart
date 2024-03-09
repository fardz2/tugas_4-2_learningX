import 'package:flutter/material.dart';
import 'package:flutter_application_tugas4_2/halaman4.dart';
import 'package:get/get.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 3"),
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
                  Get.to(() => const Halaman4());
                },
                child: const Text("Selanjutnya")),
            ElevatedButton(
                onPressed: () {
                  Get.dialog(AlertDialog(
                    title: const Text("Ini Dialog"),
                    content: const Text("Ini Dialog menggunakan getx"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Tidak")),
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Ya"))
                    ],
                  ));
                },
                child: const Text("Tampilkan dialog")),
          ],
        ),
      ),
    );
  }
}
