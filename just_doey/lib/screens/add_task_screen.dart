import 'package:flutter/material.dart';
import 'package:just_doey/components/task_tile.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String task;
  List<TaskTile> tasksList = [];
  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 30.0,
                ),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextField(
                controller: taskController,
                autofocus: true,
                onChanged: (value) {
                 task = value;
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 3.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              FlatButton(
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                onPressed: () {
                  taskController.clear();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
