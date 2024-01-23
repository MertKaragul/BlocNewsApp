import 'package:blocnewsapp/Model/NewsModel.dart';

abstract class IRemote{
  Future<NewsModel> getNews();
}