import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/user.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Future<void> checkIsLoggedIn() async {
    final user = boxUser.get("myUser") as User?;
    Future.delayed(const Duration(seconds: 3), () {
      if (user != null) {
        Get.offNamed("/enterpin", arguments: {"type": "login"});
      } else {
        Get.offNamed("/signup");
      }
    });
  }
}
