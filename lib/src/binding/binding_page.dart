import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_getx.dart';

class BindingPages implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllerWithGetX());
  }
}
