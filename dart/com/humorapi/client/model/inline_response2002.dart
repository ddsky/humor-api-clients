part of openapi.api;

class InlineResponse2002 {
  
  List<Object> memes = [];
  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[memes=$memes, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['memes'] == null) {
      memes = null;
    } else {
      memes = Object.listFromJson(json['memes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (memes != null)
      json['memes'] = memes;
    return json;
  }

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2002>() : json.map((value) => new InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}

