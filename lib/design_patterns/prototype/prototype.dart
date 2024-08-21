class Person {
  String name;
  String rno;
  String age;
  Person({
    required this.name,
    required this.rno,
    required this.age,
  });

  Person clone() => Person(name: name, rno: rno, age: age);

  Person copyWith(String? name, String? rno, String? age) {
    return Person(
      name: name ?? this.name,
      rno: rno ?? this.rno,
      age: age ?? this.age,
    );
  }

  @override
  String toString() {
    return "name : $name, rno : $rno, age : $age";
  }
}

Person person1 = Person(
  name: 'John Doe',
  rno: '12345',
  age: '25',
);

Person person3 = person1.copyWith(
  "Syed Faraz",
  "",
  "",
);

Person person2 = person1.clone();


// Prototype Design pattern helps us to create a new object by cloning an existing object....
// Whenever we want to create a new object with same properties but different refernce we use prototype design pattern...

