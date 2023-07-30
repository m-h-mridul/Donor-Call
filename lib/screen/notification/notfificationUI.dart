// ignore_for_file: file_names, must_be_immutable

import 'package:donercall/controller/notificationCon.dart';
import 'package:donercall/model/notificationmoel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class NotificationUi extends StatelessWidget {
  static const name = '/notificatioin';
  NotificationUi({super.key});
  NotificationController notificationController = NotificationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => notificationController.notfiactionlist.isEmpty
              ? const Center(child: Text('Not find any Notifications'))
              : ListView.builder(
                  itemCount: notificationController.notfiactionlist.length,
                  itemBuilder: (context, index) {
                    NotificationModel notificationModel =
                        notificationController.notfiactionlist[index];
                    return ListTile(
                      leading: Image.asset('assets/louncher_icon/icon.png'),
                      title: Text(notificationModel.title),
                      subtitle: Text(notificationModel.body),
                    );
                  }),
        ),
      ),
    );
  }
}
