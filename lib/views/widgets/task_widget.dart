//  كيف حيتم رسم الويدغت

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/Task.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function function;

  TaskWidget(this.task,this.function);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        value: task.isComplete,
        title: Text(task.name),
        onChanged: (v) {
          task.isComplete = !task.isComplete;
          function();
        });
  }
}
