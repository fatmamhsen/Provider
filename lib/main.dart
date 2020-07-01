import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/change_color.dart';
import 'package:untitled1/sec_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ChangeColor(),
      child: MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Provider'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Change Container Color ',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Consumer<ChangeColor>(builder: (context,changeColor,child) => Switch(
                value: changeColor.lightBlue,
                  onChanged: (newVal){
                  changeColor.lightBlue = newVal;
                    //ChangeColor();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecPage()));
                  },
                ),
              ),
            ],
          ),
        ),
        ),
      ) ,
    );
  }
}

