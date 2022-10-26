import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/bloc/board_bloc/board_bloc.dart';
import 'package:tic_tac_toe/bloc_observer.dart';
import 'package:tic_tac_toe/firebase_service.dart';

import 'firebase_options.dart';

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boardService = BoardService();
    return BlocProvider(
      create: (context) => BoardBloc(boardService),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tic Tac Toe',
        home: _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Board(size: size),
    );
  }
}

class Board extends StatefulWidget {
  const Board({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    const myStyle = TextStyle(fontSize: 30);
    final boardService = BoardService();
    return Center(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<BoardBloc, BoardState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Text(
                            state.listNumbers,
                            style: myStyle,
                          ),
                        ],
                      );
                    },
                  ),
                  StreamBuilder(
                    stream: boardService.getState(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      } else {
                        final String state = snapshot.data!.snapshot.value;
                        if (state == 'q19') {
                          return const Text(
                            "O es el ganador",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 40,
                            ),
                          );
                        } else if (state == 'q15') {
                          return const Text(
                            "X es el ganador",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 40,
                            ),
                          );
                        } else {
                          return const Text(
                            "",
                            style: myStyle,
                          );
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[0] == '' ? _oneClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[0],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[1] == '' ? _twoClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[1],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[2] == '' ? _threeClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[2],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[3] == '' ? _fourClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[3],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[4] == '' ? _fiveClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[4],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[5] == '' ? _sixClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[5],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[6] == '' ? _sevenClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[6],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[7] == '' ? _eightClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[7],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<BoardBloc, BoardState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: state.values[8] == '' ? _nineClick : null,
                            child: Card(
                              child: SizedBox(
                                height: widget.size.height * 0.1,
                                width: widget.size.height * 0.1,
                                child: Center(
                                    child: Text(
                                  state.values[8],
                                  style: myStyle,
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<BoardBloc>().add(ResetEvent()),
                      child: const Icon(Icons.restart_alt_outlined),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _oneClick() => context.read<BoardBloc>().add(OnOneClickEvent());

  _twoClick() => context.read<BoardBloc>().add(OnTwoClickEvent());

  _sixClick() => context.read<BoardBloc>().add(OnSixClickEvent());

  _fourClick() => context.read<BoardBloc>().add(OnFourClickEvent());

  _fiveClick() => context.read<BoardBloc>().add(OnFiveClickEvent());

  _nineClick() => context.read<BoardBloc>().add(OnNineClickEvent());

  _threeClick() => context.read<BoardBloc>().add(OnThreeClickEvent());

  _sevenClick() => context.read<BoardBloc>().add(OnSevenClickEvent());

  _eightClick() => context.read<BoardBloc>().add(OnEightClickEvent());
}
