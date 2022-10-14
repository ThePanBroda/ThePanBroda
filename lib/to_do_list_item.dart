import 'package:flutter/material.dart';

class ToDoListItem extends StatelessWidget {
  const ToDoListItem({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            name,
            style: TextStyle(color: Colors.red, fontSize: 24),
          ),
        ),
        Divider()
      ],
    );
  }
}
