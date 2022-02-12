import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  final CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return ElevatedButton(
        onPressed: () {
          // Get.find<CountControllerWithGetX>().increase();
          _controllerWithGetX.increase(id);
        },
        child: const Text("+"));
  }

  @override
  Widget build(BuildContext context) {
    // 2. Get.put(CountControllerWithGetX());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Get X"),
          GetBuilder<CountControllerWithGetX>(
              id: "first",
              builder: (controller) {
                return Text(
                  "${controller.count}",
                  style: const TextStyle(fontSize: 50),
                );
              }),
          GetBuilder<CountControllerWithGetX>(
              id: "second",
              builder: (controller) {
                return Text(
                  "${controller.count}",
                  style: const TextStyle(fontSize: 50),
                );
              }),
          // ElevatedButton(
          //     onPressed: () {
          //       Get.find<CountControllerWithGetX>().increase();
          //     },
          //     child: const Text("+"))
          _button("first"),
          _button("second")
        ],
      ),
    );
  }
}
