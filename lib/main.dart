import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //runApp(Text("Hello World"));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> myList = ["One", "Two", "Three", "Four"];
  String _myText = "Hello";

  void _addListItem() {
    setState(() {
      myList.add("New item ${myList.length}");
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.backup_rounded),
              title: Text(myList[position]),
              subtitle: Text("My subtitle"),
              onTap: () {
                print("You tapped on items $position");
              },
            )
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addListItem,
        tooltip: 'Increment',
        child: Icon(Icons.add_call),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
