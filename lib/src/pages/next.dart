import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Next Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "${(Get.arguments as User).name}: ${(Get.arguments as User).age}"),
              ElevatedButton(
                child: const Text("Previous Page"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
              ),
            ],
          ),
        ));
  }
}
