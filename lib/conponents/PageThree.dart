import 'package:flutter/material.dart';
class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
                'PageThree',
                style: TextStyle(color: Colors.redAccent),
              ),
              RaisedButton(
                onPressed: back,
                color: Colors.deepOrange,
                child: Text(
                  'PageThree back',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]
        ),
      ),
    );
  }
}