import 'package:data_app/core/network/serveses/web_serves.dart';
import 'package:dio/dio.dart';

class DataProcessor {
  

 Future <List<MovisApiModel>> dataApi() {
    return RestClient(Dio()).getMovisApiModel();
  }
}
