part of 'simple_repository.dart';

class _$SimpleRepository extends SimpleRepository {

  @override
  void dispose() {
  }

  @override
  Future<List<mTeams>> getAllTeams() async {
    final simpleService = SimpleService.create();
    final response = await simpleService.getAllTeams();
    final body = response.body as List<dynamic>;
    print(body);
    final teams = body.map((e) => TeamsDto.fromJson(e)).toList();
    print(teams);
    final result = teams
        .map(
          (e) => new mTeam(
        id: e.teamsDto[0].id,
            name: e.teamsDto[0].name,
      ),
    )
        .toList();
    print(result);;
  }
}