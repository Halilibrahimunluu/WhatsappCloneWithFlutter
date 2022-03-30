import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'models/chatMessageModel.dart';
class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECE5DD),

        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff008069),
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                  ),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://i.pinimg.com/736x/cb/ac/a6/cbaca6c7502f3fe2be270824ca1056ce.jpg"),
                    maxRadius: 20,
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Halil İbrahim Ünlü",style: TextStyle(color:Colors.white, fontSize: 16 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 6,),
                        Text("Çevrimiçi",style: TextStyle(color: Colors.white, fontSize: 13),),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.videocam,size:25,),
                    tooltip: 'Görüntülü Ara',
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  IconButton(
                    icon: const Icon(Icons.call,size:25,),
                    tooltip: 'Ara',
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert,size:25,),
                    tooltip: 'Ayarlar',
                    onPressed: () {},
                    color: Colors.white,

                  ),

                ],
              ),
            ),
          ),
        ),
      body: Stack(

        children: <Widget>[

          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.white:Color(0xfffe7ffdb)),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),

              ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff008069),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 20, ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Mesaj Yaz...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Color(0xff008069),
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );

    throw UnimplementedError();
  }
}