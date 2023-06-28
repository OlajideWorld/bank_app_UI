import 'package:bank_app/authpage/controller/authcontroller.dart';
import 'package:get/get.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<AuthController>(AuthController());
  }
}
