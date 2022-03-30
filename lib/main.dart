import 'package:flutter/material.dart';
import './pages/Calls.dart';
import './pages/Chats.dart';
import './pages/StatusPage.dart';
import './pages/Persons.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const WhatsappClone(),
    title: 'WhatsApp',
    theme: ThemeData(
      primaryColor: const Color(0xff008069),
      // ignore: deprecated_member_use
      accentColor: Colors
          .white, // sohbet , durum tabbar'daki alt border rengini belirledik.
    ),
  ));
}

class WhatsappClone extends StatefulWidget {
  const WhatsappClone({Key? key}) : super(key: key);

  @override
  _WhatsappClone createState() => _WhatsappClone();
}


class _WhatsappClone extends State<WhatsappClone>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller; // late kodunu kullanarak hata düzeldi!

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(
      vsync: this,
      length: 3,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('WhatsApp'),
        actions: <Widget>[
          // Burası iconu sağa getirir .
          // ignore: prefer_const_constructors
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Arama Yap',
            onPressed: () {},
          ),

          IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: 'Ayarlar',
            onPressed: () {
            },
          ),
        ],
        elevation: 0.7, //Butonun çevresindeki gölge miktarıdır.
        bottom: TabBar(

          controller: _tabcontroller,
          tabs: const <Tab>[
            Tab(
              text: 'SOHBETLER',
            ),
            Tab(
              text: 'DURUM',
            ),
            Tab(
              text: 'ARAMALAR',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: const <Widget>[
          Chats(),
          Status(),
          Calls(),
        ], // Başka sayfalara gider.
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Persons())),
        tooltip: "Mesaj Yaz", //üzerine gelince küçük yazı çıkar.
        backgroundColor: const Color(0xff075E54),
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
