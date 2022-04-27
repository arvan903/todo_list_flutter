import 'package:flutter/material.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/models/task_data.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, Widget? child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkBoxCallBack: (checkboxState) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                },
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
