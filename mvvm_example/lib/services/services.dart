import 'dart:convert';
import 'package:mvvm_sample_app/api/model/picsum_model.dart';
import 'package:http/http.dart' as http;

class Service {
  String url = 'https://picsum.photos/v2/list';

  Future<List<PicSumModel>> fetchData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List<dynamic>;
      final listResult = json.map((e) => PicSumModel.fromJson(e)).toList();
      return listResult;
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}
