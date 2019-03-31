import 'package:flutter/material.dart';
class msgDetailPage extends StatefulWidget {
  @override
  _msgDetailPageState createState() => new _msgDetailPageState();
}

class _msgDetailPageState extends State<msgDetailPage> {
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:  Container(
        child: Center(
          child: TextField(

          ),
        ),
      ),
    );

  }

  void changeValue(String value) {
    setState(() {});
  }
}
