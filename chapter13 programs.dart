
main() {
  Person person = Person();

  print('Enter Your Name:');
  person.name = stdin.readLineSync()!;

  print('Enter Your Age:');
  person.age = int.parse(stdin.readLineSync()!);

  print('Enter Your Height in Cm:');
  person.height = double.parse(stdin.readLineSync()!);

  person.printDescription();
}



class Person {
  String? name;
  int? age;
  double? height;

  printDescription() {
    print('Your name is $name ,Age is $age , Height is $height');
  }

  set_data() {}
}
