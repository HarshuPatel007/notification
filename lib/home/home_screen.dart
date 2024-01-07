import 'package:flutter/material.dart';
import 'package:flutter_notification/notification/notification_screen.dart';
import 'package:flutter_notification/utilis/constants.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.blueColor,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(() => NoticationScreen());
                  },
                  child: Center(
                    child: Image.asset(
                      ImagesConstant.notification,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
