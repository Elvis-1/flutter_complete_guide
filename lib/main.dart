import 'package:flutter/material.dart';

// class Person {
//   String name = 'Max';
//   int age = 30;
// }
// double addNumbers(double num1, double num2) {
// print(num1 + num2);
//   return num1 + num2;
// }
// main function is automatically executed when dart starts
// void main() {
// var p1 = Person();
// var p2 = Person();
// p2.name = 'Nanu';
// print(p1.name);
// print(p2.name);

// double firstResult;
// firstResult = addNumbers(1,1);
// print(firstResult+1);
// print('hello');
//   print(addNumbers(2, 5.6));
// }

/* positional argument and constructors
   class Person{
     String name;
     int age;

     Person(String inputName, int age){
       name = inputName;
       this.age = age --add this if object has thesame argument with the constructor
     } -- this is a constructor
   }

   named arguments and constructor
    class Person{
     String name;
     int age;

     Person({String inputName, int age}){
       name = inputName;
       this.age = age --add this if object has thesame argument with the constructor
     } -- this is a constructor
   }

   // void main() {
// var p1 = Person(inputName:'Max', age:89);
// var p2 = Person(age:89, inputName:'Max');
// p2.name = 'Nanu';
// print(p1.name);
// print(p2.name);

// double firstResult;
// firstResult = addNumbers(1,1);
// print(firstResult+1);
// print('hello');
//   print(addNumbers(2, 5.6));
// }

Different types of widgets
Output & Input(visible) 
-- RaisedButton(),Text(),Card(), ...
They are drawn onto the screen: "What the user sees"

Layout & Control (Invisible)
Row(), Column(), ListView(), ..
They give app structure and control, how visible widgets are drawn onto the screen(indirectly visible)

Do not add parenthesis when using functions on buttons
*/

void main() {
  runApp(MyApp());
}

// void main() => runApp(); -- for running just one method

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //     home: Text('Hello!'),
    //   );
    // }
    var questions = [
      'What\'s is your favorite color',
      'What\'s is your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        /* put your cursor within the parenthesis of any classes and ctrl space to get all the argument supported by scaffold*/
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,// using named function
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: ()=>{  // using anonymous functions
                // ... do something
                print('Answer 2 chosen')
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
