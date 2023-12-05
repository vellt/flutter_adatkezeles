import 'package:adatmozgatas/controllers/list_item_view_controller.dart';
import 'package:adatmozgatas/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemView extends StatelessWidget {
  ListItemView({required this.users});
  List<User> users = [];

  late ListItemViewController controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.put(ListItemViewController(users: users));
    return GetBuilder<ListItemViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
            body: Column(children: controller.getRows()),
          );
        });
  }
}
