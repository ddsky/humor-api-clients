part of openapi.api;

class InlineResponse200 {
  
  List<Object> jokes = [];
  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[jokes=$jokes, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['jokes'] == null) {
      jokes = null;
    } else {
      jokes = Object.listFromJson(json['jokes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (jokes != null)
      json['jokes'] = jokes;
    return json;
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200>() : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}

