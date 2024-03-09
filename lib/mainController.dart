import 'package:get/get.dart';

class MainController extends GetxController {
  var text = "faridz".obs;

  void ubahHuruf() {
    if (text.value == text.value.toLowerCase()) {
      text.value = text.value.toUpperCase();
    } else {
      text.value = text.value.toLowerCase();
    }
  }
}
