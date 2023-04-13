void main() {
  // Future myFeature = Future(() { //Vai pro final da linha de tarefas, por ser uma função que pode demorar
  //   print("Going back to the future");
  //   return 21;
  // }).then((value) => print('The value is $value'));

  Future<int> myFutureFunc() async {
    print("I have a function in the future");
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 12;
  }

  // myFutureFunc()
  //     .then((value) => print('My function value is $value'))
  //     .onError((error, stackTrace) => print('An error occured'))
  //     .whenComplete(() => print('The feature is over'));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print('I have a functional Function');
      await Future.delayed(Duration(seconds: 5));
      return 42;
    } catch (e) {
      print('An error ocurred: $e');
      return 42;
    } finally {
      print('The Future is finally over');
    }
  }

  myFutureErrorFunc(2, 1)
    .then((value) => print('The value is: $value'))
  ;

  print('Dont with main');
}
