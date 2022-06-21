import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/whatsapp_main.dart';

void main() =>runApp(MyApp());

 


class MyApp extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Uygulaması',
      theme: ThemeData(
        
       primaryColor: Color(0xff075E54),
       accentColor: Color(0xff25D366),
      ),
      home: WhatsappMain(),
    );
  }
}