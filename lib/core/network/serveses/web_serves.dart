import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'web_serves.g.dart';

@RestApi(baseUrl: 'https://api.sampleapis.com/movies/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('horror')
  Future<List<MovisApiModel>> getMovisApiModel();
}

@JsonSerializable()
class MovisApiModel {
  const MovisApiModel({this.id, this.title, this.posterURL, this.imdbId});
  factory MovisApiModel.fromJson(Map<String, dynamic> json) =>
      _$MovisApiModelFromJson(json);

  final int? id;
  final String? title;
  final String? posterURL;
  final String? imdbId;

  Map<String, dynamic> toJson() => _$MovisApiModelToJson(this);
}
