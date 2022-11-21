import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Clone"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.camera_alt, color: Colors.white,)),
          IconButton(onPressed: null, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: null, icon: Icon(Icons.more_vert, color: Colors.white,)),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.group_add_rounded)),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
    );
  }
}
