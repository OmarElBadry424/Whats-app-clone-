
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       // leadingWidth: 80,
       title: Padding(
         padding: const EdgeInsets.only(left: 20.0),
         child: Text("Settings",
         // style: TextStyle(
         //   fontSize: 20
         // ),
         ),
       ),
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/default1.jpg',
                      height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Programmer",
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),
                        SizedBox(height: 8,),
                        Text("hey there i am using whatsapp",
                        style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),),
                      ],
                    ),),
                  ],
                ),
              ),
              Divider(),
              ListTile(leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.key),
              ),
                title: Text("Account",
                style: TextStyle(
                fontSize: 17,
                ),
                ),
                subtitle: Text("privacy, security. change number ",
                style: TextStyle(
                  fontSize: 15,
                ),),
                ),

              ListTile(leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.message),
              ),
                title: Text("Chats",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text("Theme, Wallpapers, chat history",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ),

              ListTile(leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.notifications),
              ),
                title: Text("Notfications",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text("Message, group &call tones",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ),

              ListTile(leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.circle_outlined),
              ),
                title: Text("Storage & Data",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text("Network usage, auto-download",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ),

              ListTile(leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.help_outline_outlined),
              ),
                title: Text("Help",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text("help center, contact us, privacy",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
              ),

              ListTile(leading: Padding(padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.people_alt),
              ),
                title: Text("invite a friend",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 60),
              child: Column(
                children: [Text("form", style: TextStyle(
                  fontSize: 15,
                ),),
                  Text("Facebook", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),)

                ],
              ),),

            ],
          ),
        ),
      ),
    );
  }

}