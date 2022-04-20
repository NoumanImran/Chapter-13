//13.1 (7.1)
  
  main() {
  Numbers person = Numbers();
  person.number = 10;
  person.output();
}

// Class

class Numbers {
  int? number;

  input() {}

  output() {
    print('The number is $number');
  }
}

_________________________________________________________________________________

  
 //13.2
  
  main() {
  Marks person = Marks();
  person.English = 50;
  person.Urdu = 35;
  person.Maths = 12;

  person.sum();
  person.avg();
}

//Class

class Marks {
  dynamic English;
  dynamic Urdu;
  dynamic Maths;

  input() {}

  sum() {
    int add = English + Urdu + Maths;
    print('The Sum of your Marks is $add');
  }

  avg() {
    double avg = (English + Urdu + Maths) / 30;
    print('The Average is $avg');
  }
}

_________________________________________________________________________________

  
//13.3
  
  main() {
  Circle person = Circle();
  person.radius = 5;
  person.get_radius();
  person.area();
  person.circum();
}

//Class

class Circle {
  dynamic radius;

  get_radius() {
    print('Radius $radius');
  
  }

  area() {
    print('Area of circle is ${3.14 * radius * radius}');
  }

  circum() {
    print('Circum of Area is  ${2 * 3.14 * radius}');
  }
}


_________________________________________________________________________________

//13.7
  
  main() {
  Hello x = Hello(1);
  x.printData();

  Hello y = Hello(1);
  y.printData();

  Hello z = Hello(1);
  z.printData();
}

//Class

class Hello {
  int number;

  Hello(this.number);

  void printData() {
    print('Okay');
  }
}

_________________________________________________________________________________

//13.8
  
  main() {
  Problem problem = Problem(number1: 100, number2: 150);
  problem.printData();
}

//Class

class Problem {
  int number1;
  int number2;

  Problem({required this.number1, required this.number2});

  void printData() {
    print('First Number is $number1');
    print('First Number is $number1');
    double avg = (number1 + number2) / 2;
    print('Average is $avg');
  }
}

_________________________________________________________________________________

//13.9
  
 main() {
  Problem problem = Problem(marks: 730, grade: 'A');
  print('Object 1');
  problem.printData();

  Problem problem2 = Problem(marks: 100, grade: 'D');
  print('Object 2');
  problem2.printData();
}

//Class

class Problem {
  String grade;
  int marks;

  Problem({required this.marks, required this.grade});

  void printData() {
    print('Marks is $marks');
    print('Grade is $grade');
  }
}

_________________________________________________________________________________

//13.10
  
main() {
  Problem tv = Problem('Sony', 'LASDG6431', '15000');
  tv.printDetails();
  print('');
  tv.editDetails('Samsung', 'IHKAH564', '35000');
  tv.printDetails();
}

//Class

class Problem {
  String brandName;
  String Model;
  String retailPrice;
  Problem(this.brandName, this.Model, this.retailPrice);
  editDetails(String brandName, String Model, String retailPrice) {
    this.brandName = brandName;
    this.Model = Model;
    this.retailPrice = retailPrice;
  }

  printDetails() {
    print("TV Details");
    print("TV brand name is $brandName");
    print("TV Model is $Model");
    print("TV retail price is $retailPrice");
  }
}
  
_________________________________________________________________________________

//13.13 + 13.14
  
main() {
  Travel travel = Travel();
  travel.get();
  travel.printDetails();
  print('');

  Travel travel2 = Travel();
  travel2.get();
  travel2.printDetails();

  print('');
  travel.add(travel2);
}

//Class 

class Travel {
  late int kilo;
  late int hours;

  Travel() {
    kilo = 0;
    hours = 0;
  }

  get() {
    print('Kilometers:');
    kilo = int.parse(stdin.readLineSync()!);
    print('\nHours:');
    hours = int.parse(stdin.readLineSync()!);
  }

  printDetails() {
    print("Kilometers = $kilo , Hours = $hours");
  }

  add(Travel t) {
    int totalkilo = kilo + t.kilo;
    int totalhours = hours + t.hours;
    print('Total kilometers = $totalkilo , Total Hours = $totalhours');
    return t;
  }
}

_________________________________________________________________________________
