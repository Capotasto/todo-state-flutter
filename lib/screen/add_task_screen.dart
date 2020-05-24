import 'package:flutter/material.dart';
import 'package:fluttertodoey/model/task.dart';
import 'package:fluttertodoey/model/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String input;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 32.0,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  input = value;
                });
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addItem(Task(
                  name: input,
                  isDone: false,
                ));
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
