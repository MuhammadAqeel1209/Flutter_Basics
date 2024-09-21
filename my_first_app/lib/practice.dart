import 'dart:io';

void main() {
  print("Welcome to Dart!!");
  stdout.write("Enter Your Name: ");
  
  var name = stdin.readLineSync();
  
  if (name != null) {
    print("Name is $name");
  } else {
    print("No name was provided.");
  }

  Human();
}

class Human{

  Human(){
     print("In Human constructor");
  }
}