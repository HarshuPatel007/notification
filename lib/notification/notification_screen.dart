import 'package:flutter/material.dart';
import 'package:flutter_notification/notification/notification_controlller.dart';
import 'package:flutter_notification/utilis/constants.dart';
import 'package:get/get.dart';

class NoticationScreen extends StatelessWidget {
  NoticationScreen({super.key});
  final NoticationController _noticationController =
      Get.put(NoticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        color: ColorConstant.shadowColor,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      ImagesConstant.backIcon,
                      height: 35,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.blueColor,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 35,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    _noticationController.selectedIndex.value = index;
                  },
                  child: Obx(
                    () => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:
                            _noticationController.selectedIndex.value == index
                                ? ColorConstant.lightBlueColor
                                : ColorConstant.greyColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color:
                              _noticationController.selectedIndex.value == index
                                  ? Colors.white
                                  : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Today",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 100),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Container(
                        height: 7,
                        width: 7,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstant.lightBlueColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        ImagesConstant.image1,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Happy Anniversary Tushar Bro",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: ColorConstant.blueColor,
                            ),
                          ),
                          Text(
                            "1 min ago",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.greyColor9b,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
