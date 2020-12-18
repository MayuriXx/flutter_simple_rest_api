import 'package:chopper/chopper.dart';

part 'simple_service.chopper.dart';

@ChopperApi()
abstract class SimpleService extends ChopperService {
  @Get(path: '/team-api/teams/')
  Future<Response> getAllTeams();
}
