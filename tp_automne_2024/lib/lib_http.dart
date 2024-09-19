import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:tp_automne_2024/transfert.dart';
import 'package:cookie_jar/cookie_jar.dart';


class SingletonDio {
  static var cookiemanager = CookieManager(CookieJar());

  static Dio getDio() {
    Dio dio = Dio();
    dio.interceptors.add(cookiemanager);
    return dio;
  }
}



Future<SignupResponse> signup(SignupRequest req) async {
  try {
    var response = await SingletonDio.getDio()
        .post('http://10.0.2.2:8080/api/id/signup', data: req.toJson());
    print(response);
    return SignupResponse.fromJson(response.data);
  } catch (e) {
    print(e);
    rethrow;
  }
}