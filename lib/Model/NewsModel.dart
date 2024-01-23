import 'package:blocnewsapp/Model/Article.dart';

class NewsModel{
  List<Article>? articles;
  int? totalResults;
  String? status;


  Map<String,dynamic> toJson() => {
    "articles" : articles,"totalResults" : totalResults, "status" : status 
  };


  NewsModel.fromJson(Map<String,dynamic> json)
  : articles = (json["articles"] as List<dynamic>).map((e) => Article.fromJson(e)).toList(),
  totalResults = json["totalResults"] as int?,
  status = json["status"] as String?;
}