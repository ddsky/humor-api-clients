//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RandomMeme200Response {
  /// Returns a new [RandomMeme200Response] instance.
  RandomMeme200Response({
    required this.id,
    required this.url,
    required this.type,
  });

  int id;

  String url;

  String type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RandomMeme200Response &&
    other.id == id &&
    other.url == url &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (url.hashCode) +
    (type.hashCode);

  @override
  String toString() => 'RandomMeme200Response[id=$id, url=$url, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'url'] = this.url;
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [RandomMeme200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RandomMeme200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RandomMeme200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RandomMeme200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RandomMeme200Response(
        id: mapValueOfType<int>(json, r'id')!,
        url: mapValueOfType<String>(json, r'url')!,
        type: mapValueOfType<String>(json, r'type')!,
      );
    }
    return null;
  }

  static List<RandomMeme200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RandomMeme200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RandomMeme200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RandomMeme200Response> mapFromJson(dynamic json) {
    final map = <String, RandomMeme200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RandomMeme200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RandomMeme200Response-objects as value to a dart map
  static Map<String, List<RandomMeme200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RandomMeme200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RandomMeme200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'url',
    'type',
  };
}

