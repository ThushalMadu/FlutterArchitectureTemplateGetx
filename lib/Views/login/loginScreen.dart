import 'package:bestarchi/Controller/UserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: GetBuilder<UserController>(
          init: UserController(),
          builder: (controller) {
            return Text("Login Screen ${controller.user.value.name}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0));
          },
        ),
      ),
    );
  }
}
