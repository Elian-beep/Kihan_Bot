class BotClock{

  Future clock(int seconds){
    return Future.delayed(Duration(seconds: seconds));
  }

  Stream kihanBotStream(int interval, [int? maxCount]) async* {
    //Permite que o objeto fique aberto por tempo indeterminado
    int i = 1;
    while (i != maxCount) {
      await Future.delayed(Duration(seconds: interval));
      yield i++; //Colhendo
    }
    print("The Stream is finished");
  }
}