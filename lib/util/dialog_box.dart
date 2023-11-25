import 'package:flutter/material.dart';
import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[500],
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.yellow[300],
        ),
        padding: const EdgeInsets.all(10),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              controller: controller,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 5, color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Task Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  onPressed: onSave,
                  text: 'Save',
                ),

                const SizedBox(width: 8),

                // cancel button
                MyButton(
                  onPressed: onCancel,
                  text: 'Cancel',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
