import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/pages/controller/count_controller_with_provider.dart';

class WithProider extends StatelessWidget {
  const WithProider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Provider"),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text("${snapshot.count}",
                style: const TextStyle(fontSize: 50));
          }),
          ElevatedButton(
              onPressed: () {
                Provider.of<CountControllerWithProvider>(context, listen: false)
                    .increase();
              },
              child: const Text("+"))
        ],
      ),
    );
  }
}
