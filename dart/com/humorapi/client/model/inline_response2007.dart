//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2007 {
  /// Returns a new [InlineResponse2007] instance.
  InlineResponse2007({
    @required this.word,
    @required this.rating,
  });

  String word;

  num rating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2007 &&
     other.word == word &&
     other.rating == rating;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (word == null ? 0 : word.hashCode) +
    (rating == null ? 0 : rating.hashCode);

  @override
  String toString() => 'InlineResponse2007[word=$word, rating=$rating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'word'] = word;
      json[r'rating'] = rating;
    return json;
  }

  /// Returns a new [InlineResponse2007] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2007 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2007(
        word: mapValueOfType<String>(json, r'word'),
        rating: json[r'rating'] == null
          ? null
          : num.parse(json[r'rating'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse2007> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2007.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2007>[];

  static Map<String, InlineResponse2007> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2007>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2007.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2007-objects as value to a dart map
  static Map<String, List<InlineResponse2007>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2007>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2007.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

