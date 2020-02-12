import 'package:flutter/material.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
  final List<TaskTile> listOfTasks;
  TasksList({@required this.listOfTasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return listOfTasks[index];
      },
      itemCount: listOfTasks.length,
    );
  }
}
