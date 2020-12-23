import 'package:flutter_simple_rest_api/data/remote/dto/team_member_dto.dart';
import 'package:flutter_simple_rest_api/model/mSkill.dart';

class mTeamMember {
  String id;
  String name;
  String firstName;
  int age;
  String role;
  List<mSkill> skills;

  mTeamMember(
      {this.id, this.name, this.firstName, this.age, this.role, this.skills});

  static mTeamMember fromDto(TeamMemberDto dto) {
    return mTeamMember(
      id: dto.id,
      name: dto.name,
      firstName: dto.firstName,
      age: dto.age,
      role: dto.role,
      skills: List<mSkill>.from(dto.skillsDto.map((x) => mSkill.fromDto(x))),
    );
  }
}
