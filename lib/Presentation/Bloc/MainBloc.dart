import 'package:blocnewsapp/Model/NewsModel.dart';
import 'package:blocnewsapp/Presentation/Bloc/MainEvent.dart';
import 'package:blocnewsapp/Presentation/Bloc/MainState.dart';
import 'package:blocnewsapp/Service/Remote.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent,MainState>{
  final Remote _remote = Remote();
  
  MainBloc(): super(MainInitial()){
    on<GetNewsEvent>((event, emit) async {
      try{
      emit(MainLoadingState());
      NewsModel newsModel = await _remote.getNews();
      emit(MainGetNewsState(newsModel));
      }catch(e){
        emit(MainErrorState(e.toString()));
      }
    });
  }
}