import 'dart:io';


//implementar o Timing!

class TimeQuestions{
  String hour = 'Que horas sao?';
  String day = 'Que dia e hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String kihanBot = 'KihanBOT:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime(){
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('horas') ||
        question.contains('Horas') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('ano') ||
        question.contains('Ano')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {

    if (question == hour) {

      String _botAnswer = kihanBot + ' Opa! são : ${date.hour} horas e ${date.minute} minutos!';
      print(_botAnswer);
    } else if (question == day) {

      String _botAnswer = kihanBot + ' Opa! hoje é dia : ${date.day}';
      print(_botAnswer);
    } else if (question == year) {

      String _botAnswer = kihanBot + ' Opa! estamos em : ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {

      String _botQuestion =
          kihanBot + ' Não entendi, você quer saber das horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {

        String _botAnswer = kihanBot + ' Beleza, são : ${date.hour} horas e ${date.minute} minutos!';
        print(_botAnswer);
      } else {

        String _botAnswer = kihanBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {

      String _botQuestion =
          kihanBot + ' Não entendi, você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {

        String _botAnswer = kihanBot + ' Beleza, hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {

        String _botAnswer = kihanBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {

      String _botQuestion =
          kihanBot + ' Não entendi, você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {

        String _botAnswer = kihanBot +
            ' Beleza, estamos no ano de 2077, a pandemia já está terminando... \n '
                'Brincadeirinha! estamos em : ${date.year}';
        print(_botAnswer);
      } else {

        String _botAnswer = kihanBot + ' Ah, foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}
