import 'package:flutter/material.dart';
import 'package:fluttertodoey/model/task.dart';

class TaskItem extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function onChanged;

  TaskItem({this.taskName, this.isDone, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          taskName,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            decoration:
                isDone ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        Checkbox(
          value: isDone,
          activeColor: Colors.lightBlueAccent,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
