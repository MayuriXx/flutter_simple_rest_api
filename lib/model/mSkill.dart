import 'package:flutter_simple_rest_api/data/remote/dto/skill_dto.dart';

class mSkill {
  String id;
  String name;
  int rating;
  int ratingMax;

  mSkill({this.id, this.name, this.rating, this.ratingMax});

  static mSkill fromDto(SkillDto dto) {
    return mSkill(
        id: dto.id,
        name: dto.name,
        rating: dto.rating,
        ratingMax: dto.ratingMax);
  }
}
