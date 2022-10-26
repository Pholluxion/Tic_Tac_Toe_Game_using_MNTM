import 'package:bloc/bloc.dart';
import 'package:tic_tac_toe/firebase_service.dart';

part 'board_event.dart';
part 'board_state.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState> {
  final BoardService _boardService;
  BoardBloc(boardService)
      : _boardService = boardService,
        super(BoardInitial()) {
    on<ResetEvent>(_initState);
    on<OnOneClickEvent>(_onOneClick);
    on<OnTwoClickEvent>(_onTwoClick);
    on<OnThreeClickEvent>(_onThreeClick);
    on<OnFourClickEvent>(_onFourClick);
    on<OnFiveClickEvent>(_onFiveClick);
    on<OnSixClickEvent>(_onSixClick);
    on<OnSevenClickEvent>(_onSevenClick);
    on<OnEightClickEvent>(_onEightClick);
    on<OnNineClickEvent>(_onNineClick);
  }

  void _initState(ResetEvent event, Emitter<BoardState> emit) {
    _boardService.resetBoard();
    emit(BoardInitial());
  }

  void _onOneClick(OnOneClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[0] = 'X';
      emit(XTurn(state.listNumbers += '1', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[0] = 'X';
      vals[0] = 'X';
      emit(XTurn(state.listNumbers += '1', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[0] = 'O';
      emit(OTurn(state.listNumbers += '1', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onTwoClick(OnTwoClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[1] = 'X';
      emit(XTurn(state.listNumbers += '2', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[1] = 'X';
      emit(XTurn(state.listNumbers += '2', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[1] = 'O';
      emit(OTurn(state.listNumbers += '2', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onThreeClick(OnThreeClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[2] = 'X';
      emit(XTurn(state.listNumbers += '3', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[2] = 'X';
      emit(XTurn(state.listNumbers += '3', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[2] = 'O';
      emit(OTurn(state.listNumbers += '3', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onFourClick(OnFourClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[3] = 'X';
      emit(XTurn(state.listNumbers += '4', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[3] = 'X';
      emit(XTurn(state.listNumbers += '4', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[3] = 'O';
      emit(OTurn(state.listNumbers += '4', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onFiveClick(OnFiveClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[4] = 'X';
      emit(XTurn(state.listNumbers += '5', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[4] = 'X';
      emit(XTurn(state.listNumbers += '5', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[4] = 'O';
      emit(OTurn(state.listNumbers += '5', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onSixClick(OnSixClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[5] = 'X';
      emit(XTurn(state.listNumbers += '6', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[5] = 'X';
      emit(XTurn(state.listNumbers += '6', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[5] = 'O';
      emit(OTurn(state.listNumbers += '6', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onSevenClick(OnSevenClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[6] = 'X';
      emit(XTurn(state.listNumbers += '7', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[6] = 'X';
      emit(XTurn(state.listNumbers += '7', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[6] = 'O';
      emit(OTurn(state.listNumbers += '7', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onEightClick(OnEightClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[7] = 'X';
      emit(XTurn(state.listNumbers += '8', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[7] = 'X';
      emit(XTurn(state.listNumbers += '8', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[7] = 'O';
      emit(OTurn(state.listNumbers += '8', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }

  void _onNineClick(OnNineClickEvent event, Emitter<BoardState> emit) {
    if (state is BoardInitial) {
      final vals = state.values;
      vals[8] = 'X';
      emit(XTurn(state.listNumbers += '9', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else if (state is OTurn) {
      final vals = state.values;
      vals[8] = 'X';
      emit(XTurn(state.listNumbers += '9', vals));
      _boardService.setBoard(cell: state.listNumbers);
    } else {
      final vals = state.values;
      vals[8] = 'O';
      emit(OTurn(state.listNumbers += '9', vals));
      _boardService.setBoard(cell: state.listNumbers);
    }
  }
}
