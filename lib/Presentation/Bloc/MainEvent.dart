import 'package:equatable/equatable.dart';

abstract class MainEvent extends Equatable{}



class GetNewsEvent extends MainEvent{
  GetNewsEvent();
  
  @override
  // TODO: implement props
  List<Object?> get props => [];
}