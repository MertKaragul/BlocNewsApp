import 'package:blocnewsapp/Model/Source.dart';

class Article{
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() => {
    "source" : source,
    "author" : author,
    "title" : title,
    "description" : description,
    "url" : url,
    "urlToImage" : urlToImage,
    "publishedAt" : publishedAt,
    "content" : content,
  };


  Article.fromJson(Map<String,dynamic> json) : 
  source = Source.fromJson(json["source"] as dynamic),
  author = json["author"] as String?,
  title = json["title"] as String?,
  description = json["description"] as String?,
  url = json["url"] as String?,
  urlToImage = json["urlToImage"] as String?,
  publishedAt = json["publishedAt"] as String?,
  content = json["content"] as String?;


}