import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Named Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Previous Page"),
                onPressed: () {
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text("Home Page"),
                onPressed: () {
                  Get.offAllNamed("/");
                },
              )
            ],
          ),
        ));
  }
}
