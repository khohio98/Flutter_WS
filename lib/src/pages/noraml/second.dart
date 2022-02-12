import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Previous Page"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text("Home Page"),
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (_) => const Home()),
                  //     (route) => false);
                  // Get.to(const Home());
                  Get.offAll(const Home());
                },
              )
            ],
          ),
        ));
  }
}
