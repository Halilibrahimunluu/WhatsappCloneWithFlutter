import 'package:flutter/material.dart';

import '../Messages.dart';
class personlist extends StatelessWidget {
  const personlist({Key? key}) : super(key: key);

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff008069),
        // ignore: deprecated_member_use
        backgroundColor:  const Color(0xffffffff),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/cb/ac/a6/cbaca6c7502f3fe2be270824ca1056ce.jpg'),
              radius: 23,
            ),
            title: Text('Halil İbrahim Ünlü', ),
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
              radius: 23,
            ),
            title: Text('Mehmet Örs', ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300?grayscale'),
              radius: 23,
            ),
            title: Text('Uğur Şahin'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              radius: 23,
            ),
            title: Text('Cafer Özkesim', ),
            onTap: () {},
          ),


          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://secure.gravatar.com/avatar/d6fd6bff19d7f0ad4024f3811474fe92?s=180&d=mm&r=g'),
              radius: 23,
            ),
            title: Text('Zafer Yıkılmaz', ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/e7/18/12/e718121c71f92f23cc487cc27b118914.jpg'),
              radius: 23,
            ),
            title: Text('Mehmet Keskin'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/122/453/png-transparent-computer-icons-user-profile-avatar-female-profile-heroes-head-woman.png'),
              radius: 23,
            ),
            title: Text('Sevda Atıcı', ),
            onTap: () {},
          ),
        ],
      ),
    );


  }
}
