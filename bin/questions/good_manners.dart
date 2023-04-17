class GoodManners{
  String question;
  bool isThisGoodManners = false;
  String kihanBot = "Kihanbot:\n";

  GoodManners(this.question);

  bool isThisManners(){
    if (question.contains('oi') || 
    question.contains('ola') ||
    question.contains('Oi') ||
    question.contains('Ola') ||
    question.contains('obrigado') ||
      question.contains('obrigada') ||
      question.contains('Obrigado') ||
      question.contains('Obrigada') ||
      question.contains('bom') ||
      question.contains('boa') ||
      question.contains('tarde') ||
      question.contains('noite') ||
      question.contains('de nada') ||
      question.contains('De nada')
    ){
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners(){
    if (question.contains('bom dia') || question.contains('Bom dia')) {
      print(kihanBot+' Bom dia Flor do dia');
    }else if(question.contains('boa tarde') || question.contains('Boa tarde')){
      print(kihanBot+'Opa sô, tarlde');
    }else if(question.contains('boa noite') || question.contains('Boa noite')){
      print(kihanBot+' Uma bela noite, não é mesmo?');
    }else if(question.contains('oi') || question.contains('Oi') || question.contains('ola') || question.contains('Ola')){
      print(kihanBot+' Eae!');
    }else if(question.contains('obrigado') || question.contains('Obrigado') || question.contains('obrigada') || question.contains('Obrigada')){
      print(kihanBot+' É nós ladrão!');
    }
  }
}