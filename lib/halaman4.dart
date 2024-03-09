import 'package:flutter/material.dart';
import 'package:flutter_application_tugas4_2/halaman1.dart';
import 'package:get/get.dart';

class Halaman4 extends StatelessWidget {
  const Halaman4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Kembali")),
            ElevatedButton(
                onPressed: () {
                  Get.offAll(() => Halaman1());
                },
                child: const Text("Kembali ke halaman 1")),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    height: 200,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Ini adalah BottonSheet"),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("Tutup bottomsheet"))
                      ],
                    ),
                  ));
                },
                child: const Text("Tampilkan bottomsheet")),
          ],
        ),
      ),
    );
  }
}
