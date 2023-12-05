import 'package:adatmozgatas/controllers/add_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddView extends StatelessWidget {
  AddViewController controller = Get.put(AddViewController());

  @override
  Widget build(BuildContext context) {
    controller.kiurites();
    return GetBuilder<AddViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                TextField(
                  controller: controller.firstname,
                ),
                TextField(
                  controller: controller.lastname,
                ),
                CupertinoButton.filled(
                  child: Text("hozzáad"),
                  onPressed: () {
                    controller.rogzites();
                  },
                )
              ],
            ),
          );
        });
  }
}
