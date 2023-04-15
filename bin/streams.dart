import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? nextCount]) async* {
    //Permite que o objeto fique aberto por tempo indeterminado
    int i = 1;
    while (i != nextCount) {
      print("Counting $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++; //Colhendo
    }
    print("The Stream is finished");
  }

  var kihanStream = myStream(1).asBroadcastStream();
  StreamSubscription mySubscriber = kihanStream
    .listen((event) {
      if (event.isEven) {
        print('This number is Even!');
      }
    }, onError: (e) {
      print('An error happend: $e');
    }, onDone: (){
      print('The subscriber is gone');
    });

    kihanStream.map((event) => 'Subscriber 2 watching: $event',).listen(print);

    await Future.delayed(Duration(seconds: 3));
    mySubscriber.pause();
    print("Stream paused");
    await Future.delayed(Duration(seconds: 3));
    mySubscriber.resume();
    print("Stream resumed");
    await Future.delayed(Duration(seconds: 3));
    mySubscriber.cancel();
    print("Stream canceled");

    print('Main is finished');
}
