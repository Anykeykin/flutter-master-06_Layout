import 'package:flutter/material.dart';
import 'package:horizontal_list/utils.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal list'),
      ),
      body: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      double _width = constraints.constrainWidth();

                      print(_width);
                      return _width > 500
                          ?ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 15,
                          itemBuilder: (context, index) => Container(
                            // padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(5),
                            color: Colors.green,
                            child: ListTile(
                              title: Text('$index'),
                            ),
                          )
                          )
                          :SizedBox(
                            height: 200,
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  // crossAxisSpacing: 5,
                                  // mainAxisSpacing: 10,
                                  crossAxisCount: 1,
                                  childAspectRatio: 1.0,
                              ),
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                color: Colors.green,
                                child: Text('$index'),
                              )
                              ),
                          );
                    },
              )
    );
  }
}
