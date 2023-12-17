import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ArticlesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'articles',
      apiUrl: 'https://api.storyblok.com/v2/cdn/stories',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'starts_with': "articles",
        'token': "IURJyjGyAhhzLZLo2jlB0Qtt",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ArticleCall {
  static Future<ApiCallResponse> call({
    String? uuid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'article',
      apiUrl: 'https://api.storyblok.com/v2/cdn/stories/$uuid',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'find_by': "uuid",
        'token': "IURJyjGyAhhzLZLo2jlB0Qtt",
        'resolve_relations': "page.author.page.categories",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
