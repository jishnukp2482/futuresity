import 'package:futuresity/models/topcoursemodel.dart';
import 'package:http/http.dart' as http;

class httpservice {
  static Future<List<Topcoursemodel>> fetchcourse() async {
    var response = await http
        .get(Uri.parse("https://futursity.com/course/api/top_courses"));
    if (response.statusCode == 200) {
      var cousedata = response.body;
            print("success");
      return topcoursemodelFromJson(cousedata);

    } else {
      var cousedata = response.body;
      return topcoursemodelFromJson(cousedata);
    }
  }
}
