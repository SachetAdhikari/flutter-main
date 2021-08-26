import 'package:http/http.dart' as http;
import 'dart:convert'; //to decode json and so on

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    // print(response.body);
    // print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      // var longitude = jsonDecode(data)['coord']['lon'];
      // var weatherDescription = jsonDecode(data)['weather'][0]['description'];\
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
