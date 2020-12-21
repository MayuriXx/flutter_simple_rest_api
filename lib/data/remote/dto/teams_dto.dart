import 'package:flutter_simple_rest_api/data/remote/dto/team_dto.dart';

class TeamsDto {
  List<TeamDto> teamsDto;

  TeamsDto({this.teamsDto});

  TeamsDto.fromJson(Map<String, dynamic> json) {
    if (json["teams"] != null) {
      teamsDto = new List<TeamDto>();
      json["teams"].forEach((v) {
        teamsDto.add(TeamDto.fromJson(v));
      });
    }
  }
}
