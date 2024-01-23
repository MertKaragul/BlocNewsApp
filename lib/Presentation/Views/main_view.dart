import 'package:blocnewsapp/Model/NewsModel.dart';
import 'package:blocnewsapp/Presentation/Bloc/MainBloc.dart';
import 'package:blocnewsapp/Presentation/Bloc/MainEvent.dart';
import 'package:blocnewsapp/Presentation/Bloc/MainState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    var mainBloc = context.read<MainBloc>();
    mainBloc.add(GetNewsEvent());

    return Center(
      child: BlocBuilder<MainBloc,MainState>(builder: (context, state) {
      if(state is MainLoadingState){
        return CircularProgressIndicator();
      }

      if(state is MainErrorState){
        return Container(
          child: Text(
            state.error
          ),
        );
      }


      if(state is MainGetNewsState){
        return ListView.builder(
          itemCount: state.newsModel?.articles?.length ?? 0,
          itemBuilder:  (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  state.newsModel?.articles?[index].title ?? "",
                  style: const TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ],
            ),
            );
        },
        );
      }
      return Container();
    },),
    );

  }
}