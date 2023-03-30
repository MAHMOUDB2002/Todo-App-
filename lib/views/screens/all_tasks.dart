import 'package:flutter/cupertino.dart';
import 'package:todo_app_flutter/data/data_source.dart';
import 'package:todo_app_flutter/views/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  Function function;
  AllTasks(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: DataSource.task.length, itemBuilder:(context,index){
       // return Text("Moo $index");
      return TaskWidget(DataSource.task[index],function);

    },

    );
    //   const Center(
    //   child: Text("All Tasks Screen",
    //   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
    // );
  }
}
