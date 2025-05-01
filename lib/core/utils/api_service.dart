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
      print('data=${response.data}');
      return response.data;
    } catch (e) {
      if (e is DioException) {
        throw ServerFailure.fromDioError(e);
      } else {
        throw ServerFailure(' Unknown Error occurred! Please try again.');
      }
    }
  }

  final String _baseUrl2 = 'https://newsapi.org/v2/';
  static const apiKey2 = '1944b44380b345dba309bc44223f0aa2';
  Future<Map<String, dynamic>> getNeWs({required String endPoints}) async {
    try {
      var response = await dio.get('$_baseUrl2$endPoints&apiKey=$apiKey2');
      print('data=${response.data}');
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
