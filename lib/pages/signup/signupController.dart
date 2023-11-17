import 'package:air_pay/boxes.dart';
import 'package:air_pay/hive/user.dart';
import 'package:get/state_manager.dart';

class SignupController extends GetxController {
  var loginProcess = false.obs;
  var error = "";

  Future<String> login({
    required String username,
    required String email,
    required String password,
    required String reenterPassword,
    required String pin,
  }) async {
    error = "";
    boxUser.put('key_$username', User(username: username, email: email, password: password, pin: pin, airpayId: 'id_$username'));
    return error;
  }
}
