import 'dart:io';
import 'dart:math';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String kihanBot = 'KihanBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().kihanBotStream(1, 10);
  var subscriber = myStream.listen((event) {
    print("                       Kihanbot is actived for $event seconds");
  }, onDone: (){
    print("KihanBot is finishing its work, ask the last question");
    a = false;
  });

  print('-- Iniciando o KihanBOT, aguarde..--');
  await BotClock().clock(2);
  print('KihanBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(kihanBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(1);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(3);
      print(kihanBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(kihanBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando KihanBOT--');
}
