import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Basketball Score Counter'),
            backgroundColor: Colors.deepPurple,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Team A",
                        style: TextStyle(fontSize: 40),),
                        Text("$teamApoints",
                          style: TextStyle(fontSize: 120),),
                        ElevatedButton(
                          onPressed:(){
                            setState(() {
                              teamApoints++;
                            });
                          },
                          child: Text("+ 1 POINT",style: TextStyle(fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                          primary: Colors.blue),
                        ),
                        ElevatedButton(
                          onPressed:(){
                            setState(() {
                              teamApoints+2;
                            });
                          },
                          child: Text("+ 2 POINT",style: TextStyle(fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue),
                        ),
                        ElevatedButton(
                          onPressed:(){
                            setState(() {
                              teamApoints+3;
                            });
                          },
                          child: Text("+ 3 POINT",style: TextStyle(fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Team B",
                          style: TextStyle(fontSize: 40),),
                        Text("$teamBpoints",
                          style: TextStyle(fontSize: 120),),
                        ElevatedButton(
                          onPressed:(){
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          child: Text("+ 1 POINT",style: TextStyle(fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue),
                        ),
                        ElevatedButton(
                          onPressed:(){
                            setState(() {
                              teamBpoints+2;
                            });
                          },
                          child: Text("+ 2 POINT",style: TextStyle(fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue),
                        ),
                        ElevatedButton(
                          onPressed:(){
                            setState(() {
                              teamBpoints+3;
                            });
                          },
                          child: Text("+ 3 POINT",style: TextStyle(fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  teamApoints = 0;
                  teamBpoints= 0;
                });
              }, child: Text("Reset",style: TextStyle(fontSize: 15)),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue),),
            ],
          ),
        )
    );
  }
}

