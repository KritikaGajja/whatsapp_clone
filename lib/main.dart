import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chat.dart';
import 'status.dart';
import 'calls.dart';
import 'camera.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.teal,
            indicatorSize: TabBarIndicatorSize.label,
            enableFeedback: true,
            isScrollable: true,
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.camera_alt,size:20),
                  ],
                ),
              ),

              Tab(
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Text("Chat",style: TextStyle(fontSize:20),),
                  ],
                ),
              ),

              Tab(
                child: Row(
                  children: [

                    SizedBox(width: 30,),
                    Text("Status",style: TextStyle(fontSize:20),),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                  SizedBox(width: 30,),
                    Text("Calls",style: TextStyle(fontSize:20),)
                  ],
                ),
              ),

            ],
          ),

        ),
        body:TabBarView(
          children: [

            Camera(),
            Chat(),
            Status(),
            Calls(),
          ],
        )
           ),
    );
  }
}
