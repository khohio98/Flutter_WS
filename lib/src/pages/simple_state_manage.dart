import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_getx.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_provider.dart';
import 'package:sample_route_manage/src/pages/state/with_getx.dart';
import 'package:sample_route_manage/src/pages/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1. Get.put(CountControllerWithGetX());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Simple State Manage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(""),
              // ElevatedButton(
              //   child: const Text(
              //     "+",
              //     style: TextStyle(fontSize: 30),
              //   ),
              //   onPressed: () {
              //     Get.back();
              //   },
              // ),
              Expanded(
                child: WithGetX(),
              ),
              Expanded(
                child: ChangeNotifierProvider<CountControllerWithProvider>(
                  create: (_) => CountControllerWithProvider(),
                  child: const WithProider(),
                ),
              )
            ],
          ),
        ));
  }
}
