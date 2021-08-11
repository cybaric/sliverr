import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.pink[200],
          //pinned: true,
          floating: true,
          stretch: true,
          title: Align(alignment: Alignment(0.5, -0.9),
            child: Text(
              "Desaku",
              style: TextStyle(color: Colors.red),
            ),
          ),

          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              image: AssetImage("images/gambar.png"),
            ),
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
          Center(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text("data satu"))),
        ])),
        SliverGrid.count(children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 50,
            color: Colors.amber,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 50,
            height: 50,
            color: Colors.red,
          )
        ], crossAxisCount: 4)
      ],
    );
  }
}
