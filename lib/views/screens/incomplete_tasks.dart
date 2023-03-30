import 'package:flutter/cupertino.dart';
import 'package:todo_app_flutter/data/data_source.dart';
import 'package:todo_app_flutter/views/widgets/task_widget.dart';

class InCompleteTasks extends StatelessWidget {
  Function function;
  InCompleteTasks(this.function);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DataSource.task.where((element) => !element.isComplete).length,
      itemBuilder: (context, index) {
        return TaskWidget(DataSource.task.where((element) => !element.isComplete).toList()[index],function);

      },
    );
  }
}