part of openapi.api;

class InlineResponse2006 {
  
  num rating = null;
  InlineResponse2006();

  @override
  String toString() {
    return 'InlineResponse2006[rating=$rating, ]';
  }

  InlineResponse2006.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['rating'] == null) {
      rating = null;
    } else {
          rating = json['rating'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (rating != null)
      json['rating'] = rating;
    return json;
  }

  static List<InlineResponse2006> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2006>() : json.map((value) => new InlineResponse2006.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2006> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2006>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2006.fromJson(value));
    }
    return map;
  }
}

