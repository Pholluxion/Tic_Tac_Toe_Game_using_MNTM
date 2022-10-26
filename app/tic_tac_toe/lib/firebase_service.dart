import 'package:firebase_database/firebase_database.dart';

class BoardService {
  Future<void> setBoard({
    required String cell,
  }) async {
    DatabaseReference ref = FirebaseDatabase.instance.ref('/board');

    await ref.set("P${cell}E#");
  }

  Stream<DatabaseEvent> getState() {
    return FirebaseDatabase.instance.ref('/state').onValue;
  }

  Future<Object?> getBoard() async {
    Object? data;
    FirebaseDatabase.instance.ref('/board').onValue.listen((event) {
      data = event.snapshot.value
          .toString()
          .replaceAll("P", "")
          .replaceAll("E#", "");
    });
    return data;
  }

  Future<void> resetBoard() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref('/board');
    DatabaseReference refState = FirebaseDatabase.instance.ref('/state');
    await ref.set("PE#");
    await refState.set("");
  }
}
