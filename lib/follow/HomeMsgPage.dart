import 'package:flutter/material.dart';
import 'package:flutter_demo/follow/SubscibeSuccessPage.dart';
class HomeMsgPage extends StatefulWidget {
  @override
  _HomeMsgPageState createState() => new _HomeMsgPageState();
}

class _HomeMsgPageState extends State<HomeMsgPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        color: Colors.white,
        child:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 48,
                          height: 48,
                          child:CircleAvatar(
                            backgroundImage: NetworkImage("http://img1.xcarimg.com/exp/2872/2875/2937/20101220130509576539.jpg"),
                          ) ,),
                      SizedBox(width: 10,),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              "决胜千里",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 10.67,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text("操盘手"),
                            SizedBox(width: 11),
                            Text("实盘VIP6"),
//                            SizedBox(width: 69.5),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              width: 55,
                              height: 22,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFFF8D27)),
                              ),
                              child:  RaisedButton(
                                elevation: 0,
                                onPressed: (){
                                },
                                color: Colors.white,
                                child: Text("关注",style: TextStyle(color: Color(0xFFFF8D27),fontSize: 9.33),),
                              ),
                            ),

                          ],),
                          SizedBox(height: 5),
                          Text(
                            "比特币改变世界",
                            style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 8
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              ],
            ),
            Container(
              height: 51,
              child:   RaisedButton(
                color: Color(0xFFFF8D27),
                onPressed: (){
                  print('订阅');
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>SubscibeSuccessPage()));
                }, child:Container(
                  height: 51,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child:Text(
                    "订阅",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  )
              ), ),
            )
          ],
        ),
      ),
    );
  }
}
