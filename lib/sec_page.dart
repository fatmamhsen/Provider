import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/change_color.dart';


class SecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('SecPage'),
        centerTitle: true,
    ),
      body: Center(
       child: Consumer<ChangeColor>(
        builder: (context , changeColor, child)=> Container(
          width: 300.0,
          height: 300.0,
         color: changeColor.color,
        ),
      ),
    ),
    );
  }
}
