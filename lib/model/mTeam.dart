import 'package:flutter_simple_rest_api/data/remote/dto/team_dto.dart';
import 'package:flutter_simple_rest_api/model/mTeamMember.dart';

class mTeam{
  String id;
  String name;
  List<mTeamMember> members;

  mTeam({this.id,this.name, this.members});

  static mTeam fromDto(TeamDto dto){
    return mTeam(
      id: dto.id,
      name: dto.name,
      members: List<mTeamMember>.from(dto.teamMembersDto.map((x) => mTeamMember.fromDto(x))),
    );
  }
}