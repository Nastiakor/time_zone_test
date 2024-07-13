class TimeZone {
  final String offset;
  final String mainCity;
  final String code;
  final bool isDST;

  TimeZone(
      {required this.offset,
      required this.mainCity,
      required this.code,
      required this.isDST});

  factory TimeZone.fromJson(Map<String, dynamic> json) {
    return TimeZone(
      offset: json['offset'],
      mainCity: json['main_city'],
      code: json['code'],
      isDST: json['isDST'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'main_city': mainCity,
      'code': code,
    };
  }
}
