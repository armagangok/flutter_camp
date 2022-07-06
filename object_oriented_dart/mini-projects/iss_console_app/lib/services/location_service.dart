import 'dart:convert';

import 'package:http/http.dart' as http;

class IssService {
  static final IssService _singleton = IssService._internal();

  factory IssService() => _singleton;
  
  IssService._internal();

  String url = "http://api.open-notify.org/iss-now.json";
  Future fetchData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      // final result = json.map((e) => IssModel.fromJson(e)).toList();
      print("$json");
      
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}
