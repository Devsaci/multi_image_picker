import 'package:flutter/material.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi IMage Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Asset> images = <Asset>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Multi IMage Picker"),
        actions: [
          FlatButton(onPressed: (){}, child: Text("Picked Image"))
        ],
      ),
      // ignore: prefer_const_constructors
      body: Center(
      ),
    );
  }
}
