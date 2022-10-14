import 'package:chuj/to_do_list_item.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  var items = [];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          setState(() {
            //Zaktualizowanie listy na bieżąco bez tego flutter nie doda tekstu po dodaniu
            items.add(controller.text);
          });
        },
      ),
      appBar: AppBar(
        title: Text('Dzisiejsze Powinności', style: TextStyle(fontSize: 48)),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => ToDoListItem(name: items[index]),
            ),
          ),
        ],
      ),
    );
  }
}
