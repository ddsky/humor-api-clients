//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2003 {
  /// Returns a new [InlineResponse2003] instance.
  InlineResponse2003({
    @required this.id,
    @required this.url,
    @required this.type,
  });

  int id;

  String url;

  String type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2003 &&
     other.id == id &&
     other.url == url &&
     other.type == type;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (url == null ? 0 : url.hashCode) +
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'InlineResponse2003[id=$id, url=$url, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'url'] = url;
      json[r'type'] = type;
    return json;
  }

  /// Returns a new [InlineResponse2003] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2003 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2003(
        id: mapValueOfType<int>(json, r'id'),
        url: mapValueOfType<String>(json, r'url'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<InlineResponse2003> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2003.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2003>[];

  static Map<String, InlineResponse2003> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2003>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2003.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2003-objects as value to a dart map
  static Map<String, List<InlineResponse2003>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2003>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2003.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

