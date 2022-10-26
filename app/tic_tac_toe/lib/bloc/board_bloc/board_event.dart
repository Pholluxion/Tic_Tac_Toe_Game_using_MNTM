part of 'board_bloc.dart';

abstract class BoardEvent {
  const BoardEvent();
}

class OnOneClickEvent extends BoardEvent {}

class OnTwoClickEvent extends BoardEvent {}

class OnThreeClickEvent extends BoardEvent {}

class OnFourClickEvent extends BoardEvent {}

class OnFiveClickEvent extends BoardEvent {}

class OnSixClickEvent extends BoardEvent {}

class OnSevenClickEvent extends BoardEvent {}

class OnEightClickEvent extends BoardEvent {}

class OnNineClickEvent extends BoardEvent {}

class ResetEvent extends BoardEvent {}
