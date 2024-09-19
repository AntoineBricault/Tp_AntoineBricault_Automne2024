import 'package:dio/dio.dart';
import 'package:tp_automne_2024/transfert.dart';

Future<SignupResponse> signup(SignupRequest req) async {
  try {
    var response = await Dio()
        .post('http://10.0.2.2:8080/api/id/signup', data: req.toJson());
    print(response);
    return SignupResponse.fromJson(response.data);
  } catch (e) {
    print(e);
    rethrow;
  }
}