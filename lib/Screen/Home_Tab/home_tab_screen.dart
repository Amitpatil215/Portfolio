import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:portfolio/Controller/user_controller.dart';

class HomeTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(UserController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            Obx(() {
              return Text(
                _controller.user.value.name,
                style: TextStyle(fontSize: 25),
              );
            }),
            Obx(() {
              return Text(
                _controller.user.value.job,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              );
            }),
            Obx(() {
              return Text(
                _controller.user.value.description,
                style: TextStyle(
                  fontSize: 18,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
