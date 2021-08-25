part of openapi.api;

class InlineResponse2009 {
  
  String joke = null;
  
  List<String> tags = [];
  InlineResponse2009();

  @override
  String toString() {
    return 'InlineResponse2009[joke=$joke, tags=$tags, ]';
  }

  InlineResponse2009.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['joke'] == null) {
      joke = null;
    } else {
          joke = json['joke'];
    }
    if (json['tags'] == null) {
      tags = null;
    } else {
      tags = (json['tags'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (joke != null)
      json['joke'] = joke;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<InlineResponse2009> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2009>() : json.map((value) => new InlineResponse2009.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2009> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2009>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2009.fromJson(value));
    }
    return map;
  }
}

