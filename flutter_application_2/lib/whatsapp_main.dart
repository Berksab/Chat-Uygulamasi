import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/calls_page.dart';
import 'package:flutter_application_2/screens/camera_page.dart';
import 'package:flutter_application_2/screens/chats_page.dart';
import 'package:flutter_application_2/screens/status_page.dart';

class WhatsappMain extends StatefulWidget {
  WhatsappMain({Key? key}) : super(key: key);

  @override
  State<WhatsappMain> createState() => _WhatsappMainState();
}

class _WhatsappMainState extends State<WhatsappMain>
with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showMessage =true;
  @override
  void initState() {
    _tabController=TabController(vsync:this,length: 4,initialIndex: 1 );
    _tabController.addListener(() {
      _showMessage=_tabController.index !=0;
      setState(() {});
    });
    super.initState();
  }
@override
  
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: Text("Chat Uygulaması"),
      bottom: TabBar(
        controller: _tabController,
       tabs:<Widget>[
         Tab(
           icon: Icon(Icons.camera),
         ),
         Tab(
           text: "Chats",
         ),
         Tab(text: "Status",),
         Tab(text: "Calls"),



     ]
      ,),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CallsPage(),
          StatusPage(),
          ChatsPage(),
          CameraPage(),
      ],
      ),
      floatingActionButton:_showMessage 
      ? FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {},
        )
         : null,    
        
        
       
    );
   
  }
}