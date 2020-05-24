import 'package:flutter/material.dart';
import 'package:fluttertodoey/model/task_data.dart';
import 'package:fluttertodoey/widget/task_item.dart';
import 'package:provider/provider.dart';

class TaskLIst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, index) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                Provider.of<TaskData>(context).removeItem(index);
              },
              child: TaskItem(
                taskName: taskData.getTask[index].name,
                isDone: taskData.getTask[index].isDone,
                onChanged: (value) {
                  taskData.changeItem(index);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
