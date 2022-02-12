import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/controller/dependecy_controller.dart';
import 'package:sample_route_manage/src/pages/dependenys/get_lazyput.dart';
import 'package:sample_route_manage/src/pages/dependenys/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependence Manage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const GetPut(), binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }));
                },
                child: const Text("Getput")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const GetLazyPut(), binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }));
                },
                child: const Text("GetlazyPut")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const GetPut(), binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }));
                },
                child: const Text("GetPutAsync")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const GetPut(), binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                        () => DependencyController());
                  }));
                },
                child: const Text("GetCreate")),
          ],
        ),
      ),
    );
  }
}
