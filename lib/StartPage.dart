import 'package:baslangic/cardpage.dart';
import 'package:baslangic/jsonData.dart';
import 'package:baslangic/xmlData.dart';
import 'package:flutter/material.dart';


class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "New Task",
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        backgroundColor: const Color(0xFF6A1B9A),
        title: new Text("Niltek Kütüphane"),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.purple[100],

          tabs: [
            new Tab(icon: new Icon(Icons.home_filled)),
            new Tab(
              icon: new Icon(Icons.library_add),
            ),
            new Tab(
              icon: new Icon(Icons.notifications),
            ),
            new Tab(
              icon: new Icon(Icons.search),
            )
          ],
          controller: _tabController,
          indicatorColor: Colors.white,

          indicatorSize: TabBarIndicatorSize.tab,),
        bottomOpacity: 1,
      ),
      body: TabBarView(

        children: [

          new cardpage(),
          new doviz(),
          new xmlData(),
          new Text("This is notification Tab View"),

        ],
        controller: _tabController,),
    );
  }
}

class Ucak{
  Ucak({int kanat,int tekerlek=0}):assert(kanat>1){

  }
}