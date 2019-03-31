import 'package:flutter/material.dart';

final TextStyle keyStyle = new TextStyle(
    color: Color(0xFF9B9B9B),
    fontSize: 14
);
final TextStyle valueStyle = new TextStyle(
    color: Color(0xFF333333),
    fontSize: 14
);
class SubscibeSuccessPage extends StatefulWidget {
  @override
  _SubscibeSuccessPageState createState() => new _SubscibeSuccessPageState();
}

class _SubscibeSuccessPageState extends State<SubscibeSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(child: Container(
        height: 74,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned(
            left: 15,
              bottom: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_ios,size: 18),

              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                "订阅成功",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )

          ],
        ),
      ), preferredSize: Size.fromHeight(74)),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 24.5),
                  Image(image: NetworkImage("http://img1.xcarimg.com/exp/2872/2875/2937/20101220130509576539.jpg")
                    ,height: 60.5,width: 60.5,),
                  SizedBox(height: 10.5),
                  Text(
                    "订阅成功",
                    style: TextStyle(
                        fontSize: 21,
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30,),
                 Container(
                   height: 145,
                   child:  Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text(
                               "操盘手",
                               style: keyStyle
                           ),
                           Text(
                             "决胜千里",
                             style: valueStyle,
                           )
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text(
                               "平台",
                               style: keyStyle
                           ),
                           Text(
                             "TDEx实盘",
                             style: valueStyle,
                           )
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text(
                               "订阅费",
                               style: keyStyle
                           ),
                           Text(
                             "100USDT/月",
                             style: valueStyle,
                           )
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text(
                               "到期时间",
                               style: keyStyle
                           ),
                           Text(
                             "2019.03.30",
                             style: valueStyle,
                           ),
                         ],
                       )
                     ],
                   ),
                 )

                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 44,
                padding: EdgeInsets.only(right: 15,left: 15),
                child: RaisedButton(
                  onPressed: (){
                    print('查看订阅');
                  },
                  color: Color(0xFFFF8D27),
                  child:Text("查看订阅",style: TextStyle(color: Colors.white,fontSize: 16)),
                )
            ),
          ],
        ),
      ),
    );
  }
}
