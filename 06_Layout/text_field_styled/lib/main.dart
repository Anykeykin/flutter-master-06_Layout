import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "Search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field')
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: TextField(
          onTap: () {
            _name = 'Введите значение';
          },
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search, color: Colors.purple,),
              hintText: _name,
              helperText: 'Поле для поиска заметок',
              labelText: 'Search',
              labelStyle: TextStyle(
                color: Colors.purple
              ),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.deepOrange)
              // )
          ),
          
        ),
      ),
    );
  }
}
