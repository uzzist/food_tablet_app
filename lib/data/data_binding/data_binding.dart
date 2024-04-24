import 'package:food_tablet_app/controllers/home_controller.dart';
import 'package:food_tablet_app/controllers/welcome_controller.dart';
import 'package:get/get.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    // TODO: implement dependencies
  }

}