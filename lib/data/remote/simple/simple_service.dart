import 'package:chopper/chopper.dart';
import 'package:global_configuration/global_configuration.dart';

part 'simple_service.chopper.dart';

@ChopperApi()
abstract class SimpleService extends ChopperService {
  @Get(path: '/team-api/teams/',headers: {
  'Content-type': 'application/json',
  })
  Future<Response> getAllTeams();

  static SimpleService create() {
    final client = ChopperClient(
      // The first part of the URL is now here
      baseUrl: "http://10.0.2.2:8080",
      interceptors: [CurlInterceptor(), HttpLoggingInterceptor()],
      services: [
        // The generated implementation
        _$SimpleService(),
      ],
      // Converts data to & from JSON and adds the application/json header.
      converter: JsonConverter(),
    );

    // The generated class with the ChopperClient passed in
    return _$SimpleService(client);
  }
}
