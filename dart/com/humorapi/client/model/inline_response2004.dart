part of openapi.api;

class InlineResponse2004 {
  
  int id = null;
  
  String joke = null;
  InlineResponse2004();

  @override
  String toString() {
    return 'InlineResponse2004[id=$id, joke=$joke, ]';
  }

  InlineResponse2004.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['joke'] == null) {
      joke = null;
    } else {
          joke = json['joke'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (joke != null)
      json['joke'] = joke;
    return json;
  }

  static List<InlineResponse2004> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2004>() : json.map((value) => new InlineResponse2004.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2004> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2004>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2004.fromJson(value));
    }
    return map;
  }
}

