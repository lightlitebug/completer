import 'dart:async';
import 'dart:math';

void main() {
  final Future futureOne = Future(() {
    Random rnd = Random();
    int luck = rnd.nextInt(10);

    print('1. Lucky number is $luck');

    if (luck % 2 == 0) {
      return '1. Success';
    } else {
      return '1. Failure';
    }
  });

  futureOne.then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });

  final Future futureTwo = Future(() {
    Timer(Duration(seconds: 1), () {
      Random rnd = Random();
      int luck = rnd.nextInt(10);

      print('2. Lucky number is $luck');

      if (luck % 2 == 0) {
        return '2. Success';
      } else {
        return '2. Failure';
      }
    });
  });

  futureTwo.then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });

  Future futureThree(int seconds) {
    Completer c = Completer();

    Timer(Duration(seconds: 1), () {
      Random rnd = Random();
      int luck = rnd.nextInt(10);

      print('3. Lucky number is $luck');

      if (luck % 2 == 0) {
        c.complete('3. Success');
      } else {
        c.completeError('3. Failure');
      }
    });

    return c.future;
  }

  futureThree(2).then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });
}
