import 'package:flutter/material.dart';
import 'package:flutter_demo/conponents/PageOne.dart';
import 'package:flutter_demo/conponents/PageThree.dart';
import 'package:flutter_demo/conponents/PageTwo.dart';
import 'package:flutter_demo/conponents/PageFour.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;

  static List tabData = [
    {'text': '首页', 'icon': new Icon(Icons.home)},
    {'text': '资产', 'icon': new Icon(Icons.money_off)},
    {'text': '行情', 'icon': new Icon(Icons.pie_chart)},
    {'text': '账户', 'icon': new Icon(Icons.person)}
  ];
  String title =tabData[0]['text'];
  List<Widget> myTabs = [];
  void backPressEvent(){
    print("点击了返回");
    Navigator.pop(context);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this,initialIndex: 0);
    for (int i=0; i<tabData.length;i++) {
        myTabs.add(new Tab(text:tabData[i]["text"],icon:tabData[i]["icon"]));
    }
    tabController.addListener((){
      print("当前动画值：${tabController.animation.value}");
      print("当前移动的index：${tabController.index}");
      setState(() {
        title =tabData[tabController.index]['text'];
      });
    });
  }
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: TabBarView(
        children: <Widget>[
        new PageOne(),
        new PageTwo(),
        new PageThree(),
        new PageFour()
          ,new ListView(

    )
      ],controller: tabController,)
    ,
      bottomNavigationBar: Material(
        color: Colors.cyan,
        child: SafeArea(
              child:Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  boxShadow:<BoxShadow>[
                      BoxShadow(
                        color: const Color(0xFFd0d0d0), blurRadius:3.0,spreadRadius:2.0,offset:Offset(1.0, 1.0)
                      )
                  ]
                ),
                child: TabBar(
                  tabs: myTabs,
                  controller: tabController,
//                indicatorColor: Theme.of(context).primaryColor,
                  //tab标签的下划线颜色
                  indicatorWeight: 2.0,
                    labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: const Color(0xFF8E8E8E),
                ),

            )

        ),
      ),
    );
  }
}

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
