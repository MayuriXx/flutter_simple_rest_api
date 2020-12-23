import 'package:flutter_simple_rest_api/data/remote/dto/team_member_dto.dart';

class TeamDto {
  String id;
  String name;
  List<TeamMemberDto> teamMembersDto;

  TeamDto({this.id, this.name, this.teamMembersDto});

  TeamDto.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    if (json["members"] != null) {
      teamMembersDto = new List<TeamMemberDto>();
      json["members"].forEach((v) {
        teamMembersDto.add(TeamMemberDto.fromJson(v));
      });
    }
  }
}
