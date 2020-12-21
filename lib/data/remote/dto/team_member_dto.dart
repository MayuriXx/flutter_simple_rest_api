import 'package:flutter_simple_rest_api/data/remote/dto/skill_dto.dart';

enum Role {TECH_LEAD,DEV,PO,UX,SCRUM}

class TeamMemberDto {
  String id;
  String name;
  String firstName;
  int age;
  List<String> role = ["TECH_LEAD", "DEV", "PO", "UX", "SCRUM"];
  List<SkillDto> skillsDto;

  TeamMemberDto(
      {this.id,
      this.name,
      this.firstName,
      this.age,
      this.role,
      this.skillsDto});

  TeamMemberDto.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    firstName = json["firstName"];
    age = json["age"];
    role = json["role"];
    if (json["skills"] != null) {
      skillsDto = new List<SkillDto>();
      json["teams"].forEach((v) {
        skillsDto.add(SkillDto.fromJson(v));
      });
    }
  }
}
