import 'package:flutter/material.dart';

//Main program starting point
void main() {
  runApp(MyApp());
}

// statelessWidget used for static widgets
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tims App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        //adapt to screen pixel count
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //widget (text), within widget (Appbar) within widget (Scaffold)
    return Scaffold(
        appBar: AppBar(title: Text("Hello world")),
        body: Text("This is my first app"));
  }
}
