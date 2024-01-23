import 'package:blocnewsapp/Presentation/Bloc/MainBloc.dart';
import 'package:blocnewsapp/Presentation/Views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: BlocProvider(
        create: (context) => MainBloc(),
        child: const MainView(),
      ),
      )
    );
  }
}
