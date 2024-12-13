import 'package:get/get.dart';

class VisibilityController extends GetxController {
  var section1Visible = false.obs;
  var section2Visible = false.obs;

  void setSectionVisible(int section) {
    if (section == 1) section1Visible.value = true;
    if (section == 2) section2Visible.value = true;
  }
}
