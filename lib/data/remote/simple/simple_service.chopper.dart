// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$SimpleService extends SimpleService {
  _$SimpleService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = SimpleService;

  Future<Response> getAllTeams() {
    final $url = '/team-api/teams/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
