import 'package:chopper/chopper.dart';
import 'package:global_configuration/global_configuration.dart';

class SimpleClient {
  static ChopperClient singleton;

  static ChopperClient instance() {
    if (singleton == null) {
      singleton = ChopperClient(
        baseUrl: GlobalConfiguration().get("http://localhost:8080/api"),
        interceptors: [
          (Request request) async {
            //var key = GlobalConfiguration().get("http://localhost:8080/api");

            //var authorization = "Basic $key";

            Map<String, String> headers = {};
            request.headers
                .forEach((k, v) => {headers.putIfAbsent(k, () => v)});
            headers.putIfAbsent('Access-Control-Allow-Origin', () => '*');
            headers.putIfAbsent('Access-Control-Allow-Origin',
                () => "GET, POST, PATCH, PUT, OPTIONS");
            //headers.putIfAbsent("Authorization", () => "$authorization");
            headers.putIfAbsent("content-type", () => "application/json");
            return request.replace(headers: headers);
          },
          CurlInterceptor(),
          HttpLoggingInterceptor()
        ],
        converter: JsonConverter(),
      );
    }
    return singleton;
  }
}
