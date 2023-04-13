void main() {
  Future myFeature = Future(() { //Vai pro final da linha de tarefas, por ser uma função que pode demorar
    print("Going back to the future");
    return 21;
  }).then((value) => print('The value is $value'));

  print('Dont with main');
}