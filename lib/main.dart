import 'package:flutter/material.dart';
import 'package:flutter_listview/models/item.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage() ,
    );
  }

}


class HomePage extends StatefulWidget{

  var items = new List<Item>();

  HomePage(){
    items = [];

    items.add(Item(title: "Banana"));
    items.add(Item(title: "Manga"));
    items.add(Item(title: "Maboque"));
    items.add(Item(title: "Maça"));
    items.add(Item(title: "Figo"));
    items.add(Item(title: "Abacate "));
    items.add(Item(title: "Laranja"));
    items.add(Item(title: "Morango"));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
       title: Text(
         "List View"
       ),
     ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctx, int index){
          return Text(widget.items[index].title);
        },
      ),
    );
  }
}