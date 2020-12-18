import 'package:flutter_simple_rest_api/data/remote/dto/teams_dto.dart';
import 'package:flutter_simple_rest_api/model/mTeam.dart';

class mTeams {
  List<mTeam> teams;

  mTeams({this.teams});

  static mTeams fromDto(TeamsDto dto) {
    return mTeams(
      teams: List<mTeam>.from(dto.teamsDto.map((x) => mTeam.fromDto(x))),
    );
  }
}
