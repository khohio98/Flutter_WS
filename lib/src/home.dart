import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/dependenys/dependency_manage_page.dart';
import 'package:sample_route_manage/src/pages/noraml/first.dart';
import 'package:sample_route_manage/src/pages/reactive_state_manage.dart';
import 'package:sample_route_manage/src/pages/simple_state_manage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Route Management Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Normal Route"),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (_) => FirstPage(),
                  // ));
                  Get.to(const FirstPage());
                },
              ),
              ElevatedButton(
                child: const Text("Named Route"),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/first");
                  Get.toNamed("/first");
                },
              ),
              ElevatedButton(
                child: const Text("Arguments"),
                onPressed: () {
                  Get.toNamed("/next",
                      arguments: User(name: "Hyungee", age: 31));
                  // Get.toNamed("/next",
                  //     arguments: {"name": "Owen", "age": "24"});
                  // Get.to(const FirstPage(), arguments: "Owen");
                },
              ),
              ElevatedButton(
                child: const Text("Dynamic URL"),
                onPressed: () {
                  Get.toNamed(
                    "/user/29823?name=Owen&age=24",
                  );
                },
              ),
              ElevatedButton(
                child: const Text("Simple State Manage"),
                onPressed: () {
                  Get.to(const SimpleStateManagePage());
                },
              ),
              ElevatedButton(
                child: const Text("Reactive State Manage"),
                onPressed: () {
                  Get.to(const ReactiveStateManagePage());
                },
              ),
              ElevatedButton(
                child: const Text("Dependence Manage"),
                onPressed: () {
                  Get.to(const DependencyManagePage());
                },
              ),
              ElevatedButton(
                child: const Text("Binding Manage"),
                onPressed: () {
                  Get.toNamed("/binding");
                },
              ),
            ],
          ),
        ));
  }
}

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}
