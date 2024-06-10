// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_serves.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovisApiModel _$MovisApiModelFromJson(Map<String, dynamic> json) =>
    MovisApiModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      posterURL: json['posterURL'] as String?,
      imdbId: json['imdbId'] as String?,
    );

Map<String, dynamic> _$MovisApiModelToJson(MovisApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'posterURL': instance.posterURL,
      'imdbId': instance.imdbId,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.sampleapis.com/movies/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<MovisApiModel>> getMovisApiModel() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<MovisApiModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'horror',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => MovisApiModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
