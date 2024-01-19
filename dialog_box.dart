
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
final controller;

VoidCallback onSave;
VoidCallback onCancel;

   DialogBox({
    super.key,
     required this.controller,
     required this.onSave,
     required this.onCancel,
     });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task'
              ),
            ),
            
            // save button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: onSave),

                SizedBox(width: 5,),

                // Cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
           

          ],
        ),
      ),
    );
  }
}