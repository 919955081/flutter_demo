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
        child:
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


      ),
    );
  }
}
