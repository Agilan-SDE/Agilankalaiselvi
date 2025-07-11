import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}


class SecondApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return SecondAppState();
  }
}

class SecondAppState extends State<SecondApp>{

  List<String> N = [];
  TextEditingController textController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Todo List App"),
          centerTitle: false,
        ),
        body:Column(
          children: [
            Row(children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child:TextField(
                    controller: textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    label:Text("Enter a Task")
                  ),
                ),
                ),
              ),

              MaterialButton(
                height:50,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Text("Add",
                style:TextStyle(
                  color: Colors.purple,
                )),
                
                onPressed: (){
                  setState(() {
                   N.add(textController.text);
                   textController.clear();
                  });
                })
              ],
              ),

              Flexible(
                child: ListView.builder(
                  itemCount:N.length,
                  itemBuilder: (context,index){
                    return  Row(children: [
                          Expanded(
                            child: Container(
                              padding:EdgeInsets.all(10),
                              child: Text(N[index])),
                          ),
                          MaterialButton(
                            child: Icon(Icons.delete,
                           color: Colors.red,
                           ),
                            onPressed:(){
                            setState(() {
                              N.removeAt(index);
                            });
                          })
                        ],
                        );
                      
                }),
              )
              
              
        ],)
      )
    );
  }
}


