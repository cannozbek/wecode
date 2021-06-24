import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wecodenew/model/reminder.dart';
import 'package:wecodenew/views/view_reminder_detay.dart';
import 'package:wecodenew/services/db_open.dart';

class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TodoListState();
  }
}

class TodoListState extends State {
  DbHelper helper = DbHelper();
  List<Todo> todos;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (todos == null) {
      todos = [];
      getData();
    }
    return Scaffold(
        body: todoListItems(),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[100],
          elevation: 0.0,
          //Appbar'ı ayıran Çizginin büyüklüğü

          title: Text(
            "WeCodeRem",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToDetail(Todo("", 3, ""));
          },
          tooltip: 'Hatırlatıcı Ekle',
          child: Icon(Icons.add),
        ));
  }

  ListView todoListItems() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) => Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text(
                  this.todos[position].id.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(this.todos[position].title),
              subtitle: Text(this.todos[position].description),
              onTap: () {
                navigateToDetail(this.todos[position]);
              },
            )));
  }

  void navigateToDetail(Todo todo) async {
    bool result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => TodoDetail(todo)));
    if (result == true) {
      getData();
    }
  }

  void getData() {
    final todosFuture = helper.getTodos();
    todosFuture.then((result) => {
      setState(() {
        todos = result;
        count = todos.length;
      })
    });
  }


}
