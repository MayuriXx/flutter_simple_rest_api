part of 'simple_repository.dart';

class _$SimpleRepository extends SimpleRepository {
  @override
  void dispose() {}

  @override
  Future<mTeams> getAllTeams() async {
    final simpleService = SimpleService.create();
    final response = await simpleService.getAllTeams();
    final body = response.body;
    print("Body :$body");
    final TeamsDto dto = TeamsDto.fromJson(body);
    print("dto : $dto");
    final teams = new mTeams(
      teams: List<mTeam>.from(
        dto.teamsDto.map(
          (x) => mTeam.fromDto(x),
        ),
      ),
    );
    return teams;
  }
}
