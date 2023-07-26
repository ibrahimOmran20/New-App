import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsResponse.dart';
import 'package:news_app/Model/SourceResponse.dart';
class ApiManager{
  static const String baseUrl='newsapi.org';

  //https://newsapi.org/v2/top-headlines/sources?apiKey=79c3de3ba227439ea2db100d7ec05e93
  static Future<SourceResponse> getSources(String categoryId)async {
    var url = Uri.https(baseUrl, '/v2/top-headlines/sources',
        {
          "apiKey" : "79c3de3ba227439ea2db100d7ec05e93",
          "category" : categoryId

        });
    var response = await http.get(url);
    try {
      var bodyString=response.body;
      var json= jsonDecode(bodyString);
      var sourceResponse=SourceResponse.fromJson(json);
      return sourceResponse;
    }catch(e) {
      throw e;
    }

    }
  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=79c3de3ba227439ea2db100d7ec05e93
   static Future<NewsResponse> getNews(String sourceId)async{
    var url= Uri.https(baseUrl,'/v2/everything',{
      "apiKey" : "79c3de3ba227439ea2db100d7ec05e93",
      "sources" :sourceId ,
    });
    try{
      var response=await http.get(url);
      var bodyString=response.body;
      var json=jsonDecode(bodyString);
      var newsResponse=NewsResponse.fromJson(json);
      return newsResponse;
    }catch(e){
      throw e;
    }
   }
}