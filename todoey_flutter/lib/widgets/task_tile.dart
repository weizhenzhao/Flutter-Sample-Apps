import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }

//  @override
//  _TaskTileState createState() => _TaskTileState();
}

//class _TaskTileState extends State<TaskTile> {
//  bool isChecked = false;
//
//  void checkboxCallback(bool checkboxState) {
//    setState(() {
//      isChecked = checkboxState;
//    });
//  }
//}
