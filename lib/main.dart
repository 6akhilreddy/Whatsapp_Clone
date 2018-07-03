import 'package:flutter/material.dart';
import './firstpage.dart'as first;
import './secondpage.dart'as second;
import './thirdpage.dart'as third;

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState()=>new MyAppState();

}
class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "WhatsApp"
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: <Tab>[
              Tab(child: Text("CHATS",style: TextStyle(
                fontWeight: FontWeight.bold
              ),),),

              Tab(child: Text("STATUS",style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),),

              Tab(child: Text("CALLS",style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),),
            ],

          ),
        ),
        body: TabBarView(
          children: <Widget>[
            first.First(),
            second.Second(),
            third.Third()
          ],
        ),
      ),
    );
  }

}
