import 'package:flutter/material.dart';
import 'package:flutter_demo/follow/FollowFormPage.dart';
import 'package:flutter_demo/follow/HomeMsgPage.dart';
import 'package:flutter_demo/follow/SubscibePage.dart';

class baseHomeDetail extends StatefulWidget {
  @override
  _baseHomeDetailState createState() => new _baseHomeDetailState();
}

class _baseHomeDetailState extends State<baseHomeDetail> with SingleTickerProviderStateMixin{
  TabController _tabController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController  = new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(child: Container(
        color: Colors.white,
        height: 79.5,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned(
              left: 15,
              bottom: 20.5,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,size: 16,color: Color(0xFF333333)),
              )
            ),
            Container(
              height: 40,
              width: 230,
              margin: EdgeInsets.only(bottom: 5),
              alignment: Alignment.bottomCenter,
              child: TabBar(tabs: <Widget>[
                Tab(
                  text: "主页",
                ),
                Tab(
                  text: "订阅",
                ),
                //Waiting for another flutter command to release the startup lock
                Tab(
                  text: "跟单",
                ),
              ],
              labelColor: Color(0xFF333333),
              labelStyle: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w900
              ),
                indicatorColor: Color(0xFFFF8D27),
                indicatorWeight: 5,
//                indicatorPadding: EdgeInsets.only(top: 35),
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                unselectedLabelColor: Color(0xFF333333),
                unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ), preferredSize: Size.fromHeight(79.5)),
      body: Container(
        child: TabBarView(children: <Widget>[
          HomeMsgPage(),
          SubscibePage(),
          FollowFormPage(),
        ],
        controller: _tabController,),
      )
    );
  }
}
