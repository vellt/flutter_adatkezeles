import 'package:adatmozgatas/model/user.dart';
import 'package:adatmozgatas/views/add_view.dart';
import 'package:adatmozgatas/views/list_item_view.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  List<User> users = [];

  void navigateToAddView() async {
    User user = await Get.to(
      AddView(),
      transition: Transition.cupertino,
    );
    users.add(user);
    Get.snackbar(
      "${user.firstname} ${user.lastname}",
      "Sikeresen hozzáadva",
    );
  }

  void navigateToListItemView() {
    Get.to(
        ListItemView(
          users: users,
        ),
        transition: Transition.cupertino);
  }
}
