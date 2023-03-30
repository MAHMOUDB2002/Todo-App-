import 'dart:ffi';

class Task {
  String name;

  bool isComplete;

  Task(this.name, [this.isComplete = false]);//عالاقل قيمة وحدة اجبارية والاخرى اختيارية
}