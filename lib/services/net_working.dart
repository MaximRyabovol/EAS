import 'package:http/http.dart' as http;
import 'dart:convert';

class NetWorkingHelper {
  final String url;

  NetWorkingHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
