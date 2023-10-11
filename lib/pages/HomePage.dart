import 'package:flutter/material.dart';
import 'package:whatsapp_ui/wdgets/CallsWidget.dart';
import 'package:whatsapp_ui/wdgets/ChatWidget.dart';
import 'package:whatsapp_ui/wdgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor:  Color(0xFF075E55),
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'WhatsApp',
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5) {
                    //if someone clicks on value number 5 means settings 
                    Navigator.pushNamed(context, "settingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      'New Group ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      'New broadcast ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      'Linked devices ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  PopupMenuItem(
                    value: 4,
                    child: Text(
                      'Starred messages ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      'Settings ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold,

                ), tabs: [
                  Container(
                    width: 25,
                    child: Tab(icon: Icon(Icons.camera_alt),),
                  ),


                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          Text('Chats'),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,

                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('4',
                            style: TextStyle(
                              color: Color(0xFF075E55),
                              fontSize: 13,
                            ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                Container(
                  width: 85,
                  child: Tab(
                    child: Text('Status'),
                  ),
                ),
                

                Container(
                  width: 85,
                  child: Tab(
                    child: Text('Calls'),
                  ),
                ),
              ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(

              children: [
                //tab 1
                 Container(
                   color: Colors.black,
                 ),
                //tab 2

                ChatWidget(),



                //tab 3
                StatusWidget(),


                //tab 4
               CallsWidget(),

              ],
            ),
            ),
          ],
        ),
       ),
    );
  }
}
