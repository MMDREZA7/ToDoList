import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoList extends StatelessWidget {
  final String taskName;
  final bool teskCompelete;
  final void Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;
  // Function(BuildContext)? settingsFunction;

  const ToDoList(
      {super.key,
      required this.taskName,
      required this.teskCompelete,
      required this.onChanged,
      required this.deleteFunction,
      gi
      // required this.settingsFunction,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(3),
              backgroundColor: Colors.red,
              onPressed: deleteFunction,
              icon: Icons.delete,
            ),
            // SlidableAction(
            //   borderRadius: BorderRadius.circular(3),
            //   backgroundColor: Colors.black,
            //   onPressed: (context) {},
            //   icon: Icons.settings,
            // ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.yellow,
          ),
          child: Row(
            children: [
              // check box
              Checkbox(
                activeColor: Colors.black,
                value: teskCompelete,
                onChanged: onChanged,
              ),
              // tesk name
              Text(
                taskName,
                style: TextStyle(
                  decoration: teskCompelete
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
