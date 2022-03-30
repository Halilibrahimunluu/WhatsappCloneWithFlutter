import 'package:flutter/material.dart';
import 'package:untitled2/pages/models/person_list.dart';
class Persons extends StatelessWidget {
  const Persons({Key? key}) : super(key: key);
  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff008069),
        // ignore: deprecated_member_use
       backgroundColor:  const Color(0xffffffff),// sohbet , durum tabbar'daki alt border rengini belirledik.
      ),
    ));
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xffffffff),

    appBar: AppBar(
      title:Text('Kişi Seç'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Arama Yap',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'Ayarlar',
          onPressed: () {},
        ),
      ],
      backgroundColor: Color(0xff008069),
    ),
body:
ListView(
  children: const <Widget>[
    personlist(),

  ], // Başka sayfalara gider.
),
);
  }
}
