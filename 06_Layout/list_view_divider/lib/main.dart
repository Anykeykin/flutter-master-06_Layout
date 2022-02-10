import 'package:flutter/material.dart';
import 'package:list_view_divider/utils.dart';

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
  final ScrollController controller = ScrollController();
  var listData = List.generate(50, (index) => index);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
              padding: EdgeInsets.all(8),
              itemCount: listData.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '$index'
                  )
                );
              },
    ),
    );
  }
}
