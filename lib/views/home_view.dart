import 'package:adatmozgatas/controllers/home_view_controller.dart';
import 'package:adatmozgatas/model/user.dart';
import 'package:adatmozgatas/views/add_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("vlmi")),
            body: Center(child: Text("vlmi")),
            drawer: Drawer(
              child: Column(
                children: [
                  CupertinoButton.filled(
                    child: Text("Hozzáad"),
                    onPressed: controller.navigateToAddView,
                  ),
                  CupertinoButton.filled(
                    child: Text("Kilistáz"),
                    onPressed: controller.navigateToListItemView,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
