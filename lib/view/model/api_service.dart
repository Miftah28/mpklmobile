import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'package:mpklver4/view/model/api_service.dart';
import 'package:mpklver4/view/model/user.dart';

class ApieService {
  final String baseUrl = "http://10.0.143.172:8080/api";
  Future<List<User>?> login(User data) async {
    final response = await http.post(
      Uri.parse("$baseUrl/login"),
      headers: {"content-type": "application/json"},
      body: UserToJson(data),
    );
    if (response.statusCode == 200) {
      return UserFromJson(response.body);
    } else {
      return null;
    }
  }
}
