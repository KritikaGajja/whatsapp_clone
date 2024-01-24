import 'package:flutter/material.dart';

class Chat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _StateChat();
}
class _StateChat extends State<Chat>{
  var dataarr=[
    {
      "name":"ayushi",
      "lastmsg":"Hi",
      "img":"assets/images/hairopen.png",
      "time":"11:11",
      'msgcount':'2',
    },
    {
      "name":"neha",
      "lastmsg":"wanna talk",
      "img":"assets/images/lion.png",
      "time":"10:10",
      'msgcount':'0',
    },
    {
      "name":"Aditya",
      "lastmsg":"Done!",
      "img":"assets/images/oneeyed.png",
      "time":"01:20",
      'msgcount':'5',
    },
    {
      "name":"Riya",
      "lastmsg":"meet me soon!",
      "img":"assets/images/reporter.png",
      "time":"10:00",
      'msgcount':'0',
    },
    {
      "name":"Jayesh",
      "lastmsg":"Good Morning",
      "img":"assets/images/gentleman.png",
      "time":"09:20",
      "msgcount":'5',
    },
    {"name":"vishal",
      'lastmsg':'Where??',
      "img":'assets/images/nerd.png',
      'time':'10:10',
      'msgcount':'7'

    },
    {"name":"richa",
      'lastmsg':'Hi!',
      "img":'assets/images/purplegirl.png',
      'time':'11:11',
      'msgcount':'2'


    },
    {"name":"aditi",
      'lastmsg':'Done!',
      "img":'assets/images/selfie.png',
      'time':'08:11',
      'msgcount':'0'



    },
    {"name":"maitri",
      'lastmsg':'Welcome :)',
      "img":'assets/images/greentgirl.png',
      'time':'01:11',
      'msgcount':'0'


    },
    {"name":"mridul",
      'lastmsg':'Hey!',
      "img":'assets/images/hairopen.png',
      'time':'07:21',
      'msgcount':'2'

    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index)=>
      ListTile(
        leading:CircleAvatar(
          child: Image.asset(dataarr[index]['img']!.toString()),
          radius: 45,
        ) ,

      title: Text(
        dataarr[index]['name']!,
        style:TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
      ),

        subtitle: Text(
          dataarr[index]['lastmsg']!,
          style: TextStyle(color:Colors.grey.shade500),
        ),

        trailing: Column(
          children: [
            Text(dataarr[index]['time']!,
            style: TextStyle(
              color: int.parse(dataarr[index]['msgcount']!)>0
                  ?Colors.green
                  :Colors.grey
            ),),
            SizedBox(height: 11,),
            Visibility(child: SizedBox(width: 21,
            height: 21,
            child: CircleAvatar(child: Text(dataarr[index]['msgcount']!),
              backgroundColor:Colors.green,
            ),
            )
            )
          ],
        ),
      ),itemCount: dataarr.length,
      )
    );

  }

}