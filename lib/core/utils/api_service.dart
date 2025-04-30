import 'package:dio/dio.dart';
import 'package:football_scoore_app/core/error/error.dart';

class ApiServices {
  final String _baseUrl = 'https://v3.football.api-sports.io/';
  static const apiKey = 'cbe564964111a2f2df71e16abba75eb9';
  final Dio dio;
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': apiKey,
  };

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    try {
      var response = await dio.get(
        '$_baseUrl$endPoints',
        options: Options(headers: headers),
      );
      return response.data;
    } catch (e) {
      if (e is DioException) {
        throw ServerFailure.fromDioError(e);
      } else {
        throw ServerFailure(' Unknown Error occurred! Please try again.');
      }
    }
  }
}
