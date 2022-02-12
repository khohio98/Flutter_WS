import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/binding/binding_page.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/binding.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_getx.dart';
import 'package:sample_route_manage/src/pages/named/first.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';
import 'package:sample_route_manage/src/pages/next.dart';
import 'package:sample_route_manage/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      initialRoute: "/",
      // routes: {
      //   "/": (context) => const Home(),
      //   "/first": (context) => const FirstNamedPage(),
      //   "/Second": (context) => const SecondNamedPage(),
      // },
      getPages: [
        GetPage(
            name: "/", page: () => const Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => const FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => const SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => const NextPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => const UserPage(),
            transition: Transition.zoom),
        GetPage(
          name: "/binding",
          page: () => const BindingPage(),
          binding: BindingPages(),
        ),
      ],
    );
  }
}
