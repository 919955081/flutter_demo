import 'package:flutter/material.dart';
class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
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
                'PageTwo',
                style: TextStyle(color: Colors.redAccent),
              ),
              RaisedButton(
                onPressed: back,
                color: Colors.deepOrange,
                child: Text(
                  'PageTwo back',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]
        ),
      ),
    );
  }
}