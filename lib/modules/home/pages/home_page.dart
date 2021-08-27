import 'package:flutter/material.dart';
import 'package:tako_app/modules/authentication/auth_controller.dart';
import 'package:tako_app/modules/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:tako_app/util/constants/locale_keys.dart';
import 'package:tako_app/util/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  // final HomeController _demoController = Get.put(HomeController());

  final AuthController _authController = Get.find();

  void logOut(){
    _authController.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Container(
              child: ElevatedButton(onPressed: () => logOut(), child: Text("log out"),),
            ),
          ),
    );
  }
}
