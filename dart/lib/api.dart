//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/jokes_api.dart';
part 'api/memes_api.dart';
part 'api/other_api.dart';

part 'model/analyze_joke200_response.dart';
part 'model/generate_nonsense_word200_response.dart';
part 'model/praise200_response.dart';
part 'model/random_joke200_response.dart';
part 'model/random_meme200_response.dart';
part 'model/rate_word200_response.dart';
part 'model/search_gifs200_response.dart';
part 'model/search_gifs200_response_images_inner.dart';
part 'model/search_jokes200_response.dart';
part 'model/search_jokes200_response_jokes_inner.dart';
part 'model/search_memes200_response.dart';
part 'model/search_memes200_response_memes_inner.dart';
part 'model/submit_joke200_response.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
