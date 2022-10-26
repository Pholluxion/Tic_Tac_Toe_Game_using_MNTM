part of 'board_bloc.dart';

abstract class BoardState {
  String listNumbers;
  List values;
  String state;
  BoardState(this.listNumbers, this.values, {this.state = ''});
}

class BoardInitial extends BoardState {
  BoardInitial() : super("", ['', '', '', '', '', '', '', '', ''], state: "");
}

class XTurn extends BoardState {
  XTurn(super.listNumbers, super.values);
}

class OTurn extends BoardState {
  OTurn(super.listNumbers, super.values);
}
