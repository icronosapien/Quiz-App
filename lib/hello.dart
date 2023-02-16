num addNumbers(num num1, num num2) {
  return num1 + num2;
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age = 30});
}

void main() {

  var LoggedIn = false;
  var username = 'Max';
  var password = 'tester';
  var age = 30;

  if(username == 'Max' && password == 'tester'){
    print('Logged In');
  }else{
    print('Failed');
  }
  //print(addNumbers(1, 2.6));
  //var p1 = Person(name: 'Shubham');
  //print(p1.name);
}
