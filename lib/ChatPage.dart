import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ChatBottomBar.dart';
import 'package:whatsapp_ui/ChatSample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: PreferredSize(preferredSize: Size.fromHeight(65), child: AppBar(
      elevation: 0,
      leading: Padding(padding: EdgeInsets.only(top: 10,
      left: 5)
        ,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back,
      size: 25,),
      ),
      ),
      // leadingWidth: 20,
      title: Padding(
        padding: EdgeInsets.only(top: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
ClipRRect(
  borderRadius: BorderRadius.circular(30),
  child: Image.asset("images/default2.jpg", height: 45,width: 45,),
),
            Padding(padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Mohamed Mahmoud",style: TextStyle(
                fontSize: 19,
              ),),
                SizedBox(height: 5,),
                Text("online",style: TextStyle(fontSize: 15,
                color: Colors.white.withOpacity(0.8),

                ),
                ),

              ],
            ),),
        ],),
      ),
      actions: [
        Padding(padding: EdgeInsets.only(top: 10, right: 25),
        child: Icon(
          CupertinoIcons.video_camera_solid,
          size: 35,
        ),
      ),

        Padding(padding: EdgeInsets.only(top: 10, right: 25),
          child: Icon(Icons.call,
            size: 25,
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 10, right: 25),
          child: Icon(Icons.more_vert,
            size: 28,
          ),
        ),

      ],
    ),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/whatsapppp.png"),
          fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.only(top: 10, left: 8, right: 8,bottom: 80),
          child: Column(
            children: [Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFFFF3C2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8,
                  )
                ]
              ),
              child: Text("Messages and calls are end-to-end encrypted, no one outside this chat can read or listen. Tap to learn more,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),),
            ),
              ChatSample(),
              // ChatSample(),
              // ChatSample(),
              // ChatSample(),
              // ChatSample(),


            ],
          ),),
        ),
      ),
      bottomSheet: ChatBottomBar(),
      );
  }
}
