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
      home: MyHomePage(),
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
        title: Text(
          "Multi Image Picker",
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          FlatButton(
            // ignore: prefer_const_constructors
            child: Text("Picked Image"),
            onPressed: loadAssets,
          )
        ],
      ),
      // ignore: prefer_const_constructors
      body: GridView.count(
        crossAxisCount: 3,
        // ignore: prefer_const_literals_to_create_immutables
        children: List.generate(images.length, (index) {
          return AssetThumb(
            asset: images[index],
            width: 300,
            height: 300,
          );
        }),
      ),
    );
  }

  Future loadAssets() async {
    List<Asset> resultList = <Asset>[];
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        selectedAssets: images,
        enableCamera: true,
        // ignore: prefer_const_constructors
        materialOptions: MaterialOptions(
          actionBarColor: "red",
          actionBarTitle: "Example App",
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {}

    setState(() {
      images = resultList;
    });
  }
}
