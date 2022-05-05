//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2005 {
  /// Returns a new [InlineResponse2005] instance.
  InlineResponse2005({
    @required this.text,
  });

  String text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2005 &&
     other.text == text;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (text == null ? 0 : text.hashCode);

  @override
  String toString() => 'InlineResponse2005[text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = text;
    return json;
  }

  /// Returns a new [InlineResponse2005] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2005 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2005(
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<InlineResponse2005> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2005.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2005>[];

  static Map<String, InlineResponse2005> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2005>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2005.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2005-objects as value to a dart map
  static Map<String, List<InlineResponse2005>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2005>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2005.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

