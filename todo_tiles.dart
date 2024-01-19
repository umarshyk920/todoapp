// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function (BuildContext)? deleteFunction;

   TodoTile({super.key,
  required this.taskName,
  required this.taskCompleted,
  required this.onChanged,
  required this.deleteFunction,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, right: 25,top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(),
         children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(15),

            )
         ]),
        child: Container(
          padding: const EdgeInsets.all(10),
          // height: 50,
          // width: 200,
         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
         ),
         child: Row(
           children: [
            // checkbox
            Checkbox(
              value: taskCompleted,
               onChanged: onChanged,
               activeColor: Colors.blue.shade700,
               ),
        
            // task name
             Expanded(
               child: Text(taskName,
               style: TextStyle(
                fontSize: 20,
                decoration: taskCompleted 
                ? TextDecoration.lineThrough 
                : TextDecoration.none,
               ),
               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}