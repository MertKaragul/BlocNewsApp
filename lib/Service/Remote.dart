import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:blocnewsapp/Common/Constants.dart';
import 'package:blocnewsapp/Model/NewsModel.dart';
import 'package:blocnewsapp/Service/IRemote.dart';


class Remote extends IRemote{
  @override
  Future<NewsModel> getNews() async {
    Uri url = Uri.https(Constants.HOST, "/v2/top-headlines/", {"country" : Constants.COUNTRY,"apiKey" : Constants.API_KEY});

    try{
      var response = await http.get(url);
      return NewsModel.fromJson(jsonDecode(response.body));
    }catch(e){
      throw Exception(e);
    }
  }
}