import 'package:dio/dio.dart';
import 'package:tp_automne_2024/transfert.dart';

Future<SignupResponse> signup(SignupRequest req) async {
  try {
    var response = await Dio()
        .post('https://kickmyb-server.onrender.com/api/id/signup', data: req);
    print(response);
    return SignupResponse.fromJson(response.data);
  } catch (e) {
    print(e);
    rethrow;
  }
}