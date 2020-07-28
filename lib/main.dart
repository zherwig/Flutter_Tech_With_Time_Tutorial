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
        //making body a column and inside it a list of widgets
        body: TextInputWidget());
  }
}

// Main widget
class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

//Responisble for state
class _TextInputWidgetState extends State<TextInputWidget> {
  //piece that grabs in input
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  //function to update this.text
  void changeText(text) {
    // Clear if you type Hello World!
    if (text == "Hello World!") {
      controller.clear();
      text = "";
    }
    // force page refresh
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        //Here you link that controller
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message), labelText: "Type A Message"),
        onChanged: (text) => this.changeText(text),
      ),
      //Here you pull that text from the controller
      Text(this.text)
    ]);
  }
}
