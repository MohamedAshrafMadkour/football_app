import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = 'v3.football.api-sports.io/';
  static const apiKey = 'cbe564964111a2f2df71e16abba75eb9';
  final Dio dio;
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': apiKey,
  };
  ApiServices(this.dio);
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}
