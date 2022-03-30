// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:untitled2/pages/Messages.dart';
class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Card(

      child: Column(

        mainAxisSize: MainAxisSize.min,
        children:  <Widget>[

          ListTile(
            leading: CircleAvatar(
              backgroundImage:  NetworkImage("https://i.pinimg.com/736x/cb/ac/a6/cbaca6c7502f3fe2be270824ca1056ce.jpg"),
              radius: 25,
            ),
            title: Text('Halil İbrahim Ünlü', ),
            subtitle: Text('Deli misin? '),
            trailing: Text("14:31"),
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Messages()),
              );
            },


          ),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300.jpg'),
              radius: 25,
            ),
            title: Text('Mehmet Örs', ),
            subtitle: Text('Duvarları boyadım ne zaman geliyorsun? '),
            trailing: Text("13:31"),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300?grayscale'),
              radius: 25,
            ),
            title: Text('Uğur Şahin'),
            subtitle: Text('Laaaaa! Uyanın Laaaaaa!!'),
            trailing: Text("07:32"),
            onTap: () {},
          ),
        ],
      ),
    );


  }
}
