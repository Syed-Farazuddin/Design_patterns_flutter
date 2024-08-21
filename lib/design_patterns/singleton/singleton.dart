import 'package:flutter/material.dart';

class Singleton {
  static Singleton? _instance;

  // Privatized Constructor -> Using this constructor is prevents object creation from outside...
  Singleton._internal();

  // You can call this method to get the singleton instance...
  static Singleton getInstance() {
    return _instance ?? Singleton._internal();
  }
}

// Method --> 2

class Singleton2 {
  // Creating static variable to hold the singleton instance....
  static Singleton2? _instance;

  Singleton2._internal() {
    debugPrint("Instance created");
  }
  // Creating static method to get the singleton instance....
  static getInstance() {
    return _instance ?? Singleton2._internal();
  }
}

// ( Method ---> 3 )
class Singleton3 {
  static Singleton3? _instance;

  Singleton3._internal() {
    debugPrint("Instance created");
  }

  // Single implementation using factory constructor....
  factory Singleton3() {
    return _instance ?? Singleton3._internal();
  }
}

// Advantages of Singleton pattern

// * Singletons are used to ensure that only one instance of a class is created and shared throughout the application....

//  * They provide a global point of access to the object....

// * They can be used to manage resources, such as database connections, network connections, or file system

// * They can be used to implement dependency injection, which makes it easier to test and maintain the code....

// * They cannot be overridden or extended....


// Use cases for singleton pattern

// 1) Socket.io package --> because it requires a single instance of the socket connection
