import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wecodenew/model/reminder.dart';
import 'package:wecodenew/services/db_open.dart';
import 'package:intl/intl.dart';

final List<String> choices = const <String>[menuSave, menuDelete, menuBack];

const menuSave = "Kaydet";
const menuDelete = "Sil";
const menuBack = "Geri";

DbHelper helper = DbHelper();

class TodoDetail extends StatefulWidget {
  final Todo todo;

  TodoDetail(this.todo);

  @override
  State<StatefulWidget> createState() {
    return TodoDetailState(todo);
  }
}

class TodoDetailState extends State {
  Todo todo;

  TodoDetailState(this.todo);


  final _formDistance = 12.0;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = todo.title;
    descController.text = todo.description;
    var textStyle = Theme.of(context).textTheme.caption;
    var title = todo.title == "" ? "New Todo" : todo.title;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[100],
          elevation: 0.0,
          //Appbar'ı ayıran Çizginin büyüklüğü

          title: Text(
            "WeCode REMINDER",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                child: TextField(
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Başlık",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)))),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: _formDistance, bottom: _formDistance),
                child: TextField(
                    controller: descController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Açıklama",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)))),
              ),

              Row(
                children: [

                  ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(menuBack),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[300],
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                  ),


                  SizedBox(width: 10.0,),
                  ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(menuSave),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        onPrimary: Colors.white,
                      ),
                      onPressed: save),
                  SizedBox(width: 10.0,),
                  ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(menuDelete),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[300],
                        onPrimary: Colors.white,
                      ),

                      onPressed: delete),


                ],),
            ],
          ),
        ));
  }


  void select(String value) async {
    switch (value) {
      case menuSave:
        save();
        break;
      case menuDelete:
        delete();
        break;
      case menuBack:
        Navigator.pop(context, true);
        break;
      default:
    }
  }

  void delete() async {
    Navigator.pop(context, true);
    if (todo.id == null) {
      return;
    }
    int result;
    result = await helper.deleteTodo(todo.id);
    if (result != 0) {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Görevler Bitiyor"),
        content: Text("Silindi"),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }
  }

  void save() {
    todo.title = titleController.text;
    todo.description = descController.text;
    todo.date = new DateFormat.yMd().format(DateTime.now());
    if (todo.id != null) {
      helper.updateTodo(todo);
    } else {
      helper.insertTodo(todo);
    }
    Navigator.pop(context, true);
    showAlert(todo.id != null);
  }

  void showAlert(bool isUpdate) {
    AlertDialog alertDialog;
    if (isUpdate) {
      alertDialog = AlertDialog(
        title: Text("Artık Güncel"),
        content: Text("Güncellendi"),
      );
    } else {
      alertDialog = AlertDialog(
        title: Text("Süper !"),
        content: Text("Eklendi"),
      );
    }
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
