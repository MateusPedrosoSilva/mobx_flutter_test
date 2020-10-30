import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter_test/balta/stores/todo_store.dart';

import 'models/todo_model.dart';

class HomeBalta extends StatelessWidget {
  final todoStore = TodoStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) => Text(todoStore.todos.length.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var todo = Todo(
            id: 1,
            title: 'Testing',
            done: false,
          );
          todoStore.add(todo);
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Observer(
          builder: (_) => ListView.builder(
            itemCount: todoStore.todos.length,
            itemBuilder: (context, index) {
              var todo = todoStore.todos[index];
              return Text(todo.title);
            },
          ),
        ),
      ),
    );
  }
}
