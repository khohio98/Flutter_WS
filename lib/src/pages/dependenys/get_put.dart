import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/controller/dependecy_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Get.find<DependencyController>().increas();
        },
        child: null,
      ),
    );
  }
}
