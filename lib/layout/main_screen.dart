import 'package:flutter/material.dart';
import 'package:whatsapp_clone/layout/call_screen.dart';
import 'package:whatsapp_clone/layout/camera_screen.dart';
import 'package:whatsapp_clone/layout/chat_screen.dart';
import 'package:whatsapp_clone/layout/status_screen.dart';

class MainClass extends StatefulWidget {
  @override
  _MainClassState createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("WhatsApp"),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_horiz),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(child: Icon(Icons.camera_alt)),
            new Tab(child: Text("CHATS")),
            new Tab(child: Text("STATUS")),
            new Tab(child: Text("CALLS")),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen()
        ],
      ),
    );
  }
}
