import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bars'),
        centerTitle: true,
      ),
      body: new MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
    content: Text(
      'Dialog is Up...',
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.red,
      ),
    ),
    title: Text('Bar Dialog'),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text(
              'Click me',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            color: Colors.red,
            onPressed: () => Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('I am Pressed.'),
                duration: Duration(seconds: 3),
              ),
            ),
          ),
          RaisedButton(
            child: Text(
              'Dialouge Button',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            color: Colors.orange,
            onPressed: () => showDialog(context: context, child: dialog),
          ),
        ],
      ),
    );
  }
}
