import 'package:data_app/core/network/serveses/web_serves.dart';
import 'package:dio/dio.dart';

class DataProcessor {

  gitdata() {
    return RestClient(Dio()).getMovisApiModel();
  }


}
