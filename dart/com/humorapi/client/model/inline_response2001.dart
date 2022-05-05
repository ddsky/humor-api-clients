//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineResponse2001 {
  /// Returns a new [InlineResponse2001] instance.
  InlineResponse2001({
    this.images = const {},
  });

  Set<Object> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineResponse2001 &&
     other.images == images;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (images == null ? 0 : images.hashCode);

  @override
  String toString() => 'InlineResponse2001[images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'images'] = images;
    return json;
  }

  /// Returns a new [InlineResponse2001] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineResponse2001 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineResponse2001(
        images: Object.listFromJson(json[r'images']),
      );
    }
    return null;
  }

  static List<InlineResponse2001> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineResponse2001.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineResponse2001>[];

  static Map<String, InlineResponse2001> mapFromJson(dynamic json) {
    final map = <String, InlineResponse2001>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineResponse2001.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2001-objects as value to a dart map
  static Map<String, List<InlineResponse2001>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineResponse2001>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineResponse2001.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

