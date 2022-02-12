import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_getx.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetX>(builder: (_) {
            return Text(
              _.count.toString(),
              style: const TextStyle(fontSize: 40),
            );
          }),
          ElevatedButton(
              onPressed: () {
                // CountControllerWithGetX.to.increase();
                // Get.find<CountControllerWithGetX>().increase();
              },
              child: const Text("+"))
        ],
      ),
    );
  }
}
