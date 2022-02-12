import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_getx.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_provider.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_reactive.dart';
import 'package:sample_route_manage/src/pages/state/with_getx.dart';
import 'package:sample_route_manage/src/pages/state/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1. Get.put(CountControllerWithGetX());
    Get.put(CountControllerWithReactive());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reactive State Manage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Get X"),
              Obx(() => Text(
                  "${Get.find<CountControllerWithReactive>().count.value}",
                  style: const TextStyle(fontSize: 50))),
              // const Text("0", style: TextStyle(fontSize: 50)),
              ElevatedButton(
                  onPressed: () {
                    Get.find<CountControllerWithReactive>().increase();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    Get.find<CountControllerWithReactive>().onInit();
                  },
                  child: const Text("Change to 5"))
            ],
          ),
        ));
  }
}
