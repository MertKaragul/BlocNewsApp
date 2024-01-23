import 'package:blocnewsapp/Model/NewsModel.dart';
import 'package:equatable/equatable.dart';

sealed class MainState extends Equatable{}


class MainInitial extends MainState{
  MainInitial();
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class MainGetNewsState extends MainState {
  final NewsModel? newsModel;
  MainGetNewsState(this.newsModel);
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class MainLoadingState extends MainState{
  MainLoadingState();
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class MainErrorState extends MainState{
  final String error;
  MainErrorState(this.error);
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}