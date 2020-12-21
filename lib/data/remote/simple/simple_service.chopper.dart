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
    final $headers = {'Content-type': 'application/json'};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
