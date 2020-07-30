import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
  
   var already=false;
class NetworkHandler {
  String baseurl = 'http://10.0.2.2:3000';
  var log = Logger();
  Future<dynamic> get(String url) async {
      var response = await http.get(url);
    url = formater(url);
      if (response.statusCode == 200 || response.statusCode == 201) { 
      log.i(response.body);
      return json.decode(response.body);
    }
  
    log.i(response.body);
    log.i(response.statusCode);
  }
  Future<dynamic> post(String url, Map<String, String> body) async {
    url = formater(url);
    var response = await http.post(url,
        headers: {'content-type': 'application/json'}, body: json.encode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);
      print(response.contentLength);
      if(response.contentLength==32){
     already=true;
      }
      else already=false;
      return response;
    }
   
    log.d(response.body);
    log.d(response.statusCode);
  }
  String formater(String url) {
    return baseurl + url;
  }
}
