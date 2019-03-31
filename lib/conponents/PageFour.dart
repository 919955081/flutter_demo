import 'package:flutter/material.dart';
class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  void back(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Column(
            children:<Widget>[
              Text(
                'PageFour',
                style: TextStyle(color: Colors.redAccent),
              ),
              RaisedButton(
                onPressed: back,
                color: Colors.deepOrange,
                child: Text(
                  'PageFour back',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]
        ),
      ),
    );
  }
}
