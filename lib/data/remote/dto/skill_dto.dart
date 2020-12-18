class SkillDto {
  String id;
  String name;
  int rating;
  int ratingMax;

  SkillDto({this.id, this.name, this.rating, this.ratingMax});

  SkillDto.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    rating = json["rating"];
    ratingMax = json["ratingMax"];
  }
}
