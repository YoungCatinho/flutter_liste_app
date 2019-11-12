import 'package:flutter/material.dart';

class ObjectListScreen extends StatefulWidget {
  @override
  _ObjectListScreenState createState() => _ObjectListScreenState();
}

class _ObjectListScreenState extends State<ObjectListScreen> {
  List<String> objects = [
    "Object 1",
    "Object 2",
    "Object 3",
    "Object 4",
    "Object 5",
    "Object 6",
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 0, 0, 1),
        title: Text("Listen App"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: objects.length,
            itemBuilder: (context, index) {
              //return Text("${index.toString()} " + objects[index]);
              return ListTile(
                enabled: true,
                title: Text(objects[index]),
                subtitle: Column(
                  children: <Widget>[
                    buildColumnRow("(1)", "Root", "C"),
                    buildColumnRow("(2)", "Major third", "E"),
                    buildColumnRow("(5)",  "Perfect fifth", "G"),
                  ],
                ),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.play_circle_outline),
              );
            }),
      ),
    );
  }

  Row buildColumnRow(ton, name, note) {
    return Row(
      children: <Widget>[
        Expanded(child: Text(ton + " " + name)),
        Expanded(child: Text(note)),
      ],
    );
  }
}
