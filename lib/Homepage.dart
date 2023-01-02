import 'package:flutter/material.dart';
import 'package:application/wigets/drawer.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double days=30;
    String name="parth";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("This First app is my Life"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days flutter $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

