import 'dart:convert';

import '../model/surah_model.dart';
import 'package:http/http.dart' as http;

class APIHandler {
  static Future<SurahModel> getData() async {
    Uri uri = Uri.https("equran.id", "/api/surat/1");
    var response = await http.get(uri);
    var data = jsonDecode(response.body);
    return SurahModel.fromJson(data);
  }
}
