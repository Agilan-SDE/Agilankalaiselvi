import 'package:flutter/material.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double size=0;

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size.width/5;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Calculator",
          style:TextStyle(
            color: Colors.white
          )),
        ),
        body:ListView(children: [
          Container(
            alignment: Alignment.bottomRight,
            child:Text("50",
          style:TextStyle(fontSize: 60,
          color:Colors.white)
          ),
          ),
          Column(children:[
            Row(children: [
             calc_button("8",Colors.white),
             calc_button("9",Colors.white),
             calc_button(".",Colors.white),
             calc_button("*",Colors.orange)
            ],),

            Row(children: [
             calc_button("7",Colors.white),
             calc_button("6",Colors.white),
             calc_button("5",Colors.white),
             calc_button("/",Colors.orange)
            ],),

            Row(children: [
             calc_button("4",Colors.white),
             calc_button("3",Colors.white),
             calc_button("2",Colors.white),
             calc_button("-",Colors.orange)
            ],),

            Row(children: [
             calc_button("1",Colors.white),
             calc_button("0",Colors.white),
             calc_button("=",Colors.orange),
             calc_button("+",Colors.orange)
            ],),
          ]),
          calc_button("clear",Colors.white)
        ],)
      ),
    );
  }

  Widget calc_button(String number,Color bgcolor){
    return InkWell(
      onTap: () {
        
      },
        child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  height:size,
                  width:size,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: bgcolor,
                  ),
                  child: Text(number,
                  style:TextStyle(
                    fontSize: 30,
                    color: Colors.black
                  )),
        )
    );
  }
}
