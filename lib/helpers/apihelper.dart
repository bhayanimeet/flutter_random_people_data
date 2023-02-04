import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/people.dart';

class ApiHelper{
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  Future<People?> fetchData() async {
    String api = "https://randomuser.me/api/";

    http.Response result = await http.get(Uri.parse(api));

    if(result.statusCode==200){
      Map decodeData = jsonDecode(result.body);

      People random = People.fromMap(data: decodeData);

      return random;
    }
    return null;
  }
}