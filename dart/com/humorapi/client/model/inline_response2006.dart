//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2006 {
  /// Returns a new [InlineResponse2006] instance.
  InlineResponse2006({
    @required this.rating,
  });

  num rating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2006 &&
     other.rating == rating;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (rating == null ? 0 : rating.hashCode);

  @override
  String toString() => 'InlineResponse2006[rating=$rating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rating'] = rating;
    return json;
  }

  /// Returns a new [InlineResponse2006] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2006 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2006(
        rating: json[r'rating'] == null
          ? null
          : num.parse(json[r'rating'].toString()),
      );
    }
    return null;
  }

  static List<InlineResponse2006> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2006.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2006>[];

  static Map<String, InlineResponse2006> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2006>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2006.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2006-objects as value to a dart map
  static Map<String, List<InlineResponse2006>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2006>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2006.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

