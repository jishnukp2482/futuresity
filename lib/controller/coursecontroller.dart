import 'package:futuresity/services/httpservicetopcouse.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class coursecontroller extends GetxController {
  var isloading = true.obs;
  var topcourselist = [].obs;
  @override
  void oninit() {
    fetchcourse();
    super.onInit();
  }

  void fetchcourse() async {
    try {
      isloading(true);
      var topcourse = await httpservice.fetchcourse();
      if (topcourse != null) {
        topcourselist.value = topcourse;
        print("topcouse success");
      }
    } finally {
      isloading(false);
      print("topcoure fail");
    }
  }
}
