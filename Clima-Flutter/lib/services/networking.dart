import 'package:http/http.dart' as http;
import 'dart:convert';

class NetWorkHandler{
  final String url;
  NetWorkHandler(this.url);
  Future getWeatherData() async{
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
    }
  }
}