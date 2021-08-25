part of openapi.api;

class InlineResponse2007 {
  
  String word = null;
  
  num rating = null;
  InlineResponse2007();

  @override
  String toString() {
    return 'InlineResponse2007[word=$word, rating=$rating, ]';
  }

  InlineResponse2007.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['word'] == null) {
      word = null;
    } else {
          word = json['word'];
    }
    if (json['rating'] == null) {
      rating = null;
    } else {
          rating = json['rating'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (word != null)
      json['word'] = word;
    if (rating != null)
      json['rating'] = rating;
    return json;
  }

  static List<InlineResponse2007> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2007>() : json.map((value) => new InlineResponse2007.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2007> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2007>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2007.fromJson(value));
    }
    return map;
  }
}

