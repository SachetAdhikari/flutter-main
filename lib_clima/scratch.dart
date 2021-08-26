import 'dart:io';

void main() {
  performTasks();
}

// void performTasks() {
//   task1();
//   task2();
//   task3();
// }
//
// void task1() {
//   String result = 'task 1 data';
//   print('Task 1 complete');
// }
//
// void task2() {
//   Duration threeSeconds = Duration(seconds: 3);
//   // sleep(threeSeconds); //synchronous
//   // String result = 'task 2 data';
//   // print('Task 2 complete');
//
//   Future.delayed(threeSeconds, () {
//     //asynchronous
//     String result = 'task 2 data';
//     print('Task 2 complete');
//   });
// }
//
// void task3() {
//   String result = 'task 3 data';
//   print('Task 3 complete');
// }

// result of one function required in another (in asynchronous)

// void performTasks() {
//   task1();
//   String task2Result = task2();
//   task3(task2Result);
// }

void performTasks() async {
  task1();
  print(task2());
  String task2Result = await task2();
  // task4();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

// String task2() {
Future task2() async {
  //or Future<String> task2() async{
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}

// void task4() {
//   String result = 'task 4 data';
//   print('Task 4 complete');
// }

//other

// throw 'throw statement'; //throw statement
//someVariable ?? defaultValue //null aware operator

// https://dartpad.dartlang.org

//xml is like html => [ <key> value </key> ]
//json is like dictionary/map => [ { key:value } ]
