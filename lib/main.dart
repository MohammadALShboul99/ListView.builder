import 'package:flutter/material.dart';

void main() {
  runApp(shboulmohd());
}

class shboulmohd extends StatelessWidget {
  const shboulmohd({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List myColorss = ["blue", "green", "red", "purple"];
  List mycolorsinflutter = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.purple
  ];
  List colorsNumber = ["one", "two", "three", "four"];
  List networkimage = [
    NetworkImage(
        "https://th.bing.com/th/id/OIP.HTFER8NgRZ_hyp473W1wZwHaHa?w=168&h=180&c=7&r=0&o=5&pid=1.7"),
    NetworkImage(
        "https://th.bing.com/th/id/OIP.-XgaSDxiL4F4YnrYZV7FUQHaHa?w=190&h=190&c=7&r=0&o=5&pid=1.7"),
    NetworkImage(
        "https://th.bing.com/th/id/OIP.bOZiFY60Bt_TaSLaWwo7QwHaEK?w=297&h=180&c=7&r=0&o=5&pid=1.7"),
    NetworkImage(
        "https://th.bing.com/th/id/OIP.QzitBKw88AlcX95oXc527wHaEK?w=285&h=180&c=7&r=0&o=5&pid=1.7")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int i) {
              return ListTile(
                title: Text("${myColorss[i]}"),
                subtitle: Text("${colorsNumber[i]}"),
                leading: Icon(
                  Icons.colorize,
                  color: mycolorsinflutter[i],
                ),
                trailing: Image(image: networkimage[i]),
              );
            },
          ),
        ),
      ),
    );
  }
}
