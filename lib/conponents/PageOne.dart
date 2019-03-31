import 'package:flutter/material.dart';
import 'package:flutter_demo/conponents/widget/ModeList.dart';
import 'package:flutter_demo/conponents/widget/PageBanner.dart';
class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  void back(){
    Navigator.pop(context);
  }
  final List<dynamic> arr = [
    {'image': 'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg', 'type': 0, 'id': 0, 'url': 'https://www.zhihu.com/question/294145797/answer/551162834', 'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'},
    {'image': 'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg', 'type': 0, 'id': 1, 'url': 'https://www.zhihu.com/question/294145797/answer/551162834', 'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'},
    {'image': 'https://img.alicdn.com/tfs/TB1XmFIApzqK1RjSZSgXXcpAVXa-720-338.jpg', 'type': 0, 'id': 2, 'url': 'https://zhuanlan.zhihu.com/p/51696594', 'title': 'Flutter 1.0 正式发布: Google 的便携 UI 工具包'},
    {'image': 'https://img.alicdn.com/tfs/TB1mClCABLoK1RjSZFuXXXn0XXa-600-362.jpg', 'type': 0, 'id': 3, 'url':'https://zhuanlan.zhihu.com/p/53497167','title': 'Flutter 示范应用现已开源 — 万物起源(The History of Everything)'},
    {'image': 'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg', 'type': 0, 'id': 4, 'url': 'https://www.zhihu.com/question/294145797/answer/551162834', 'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'},
    {'image': 'https://img.alicdn.com/tfs/TB1XmFIApzqK1RjSZSgXXcpAVXa-720-338.jpg', 'type': 0, 'id': 5, 'url': 'https://zhuanlan.zhihu.com/p/51696594', 'title': 'Flutter 1.0 正式发布: Google 的便携 UI 工具包'},
    {'image': 'https://img.alicdn.com/tfs/TB1mClCABLoK1RjSZFuXXXn0XXa-600-362.jpg', 'type': 0, 'id': 6, 'url':'https://zhuanlan.zhihu.com/p/53497167','title': 'Flutter 示范应用现已开源 — 万物起源(The History of Everything)'},
    {'image': 'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg', 'type': 0, 'id': 7, 'url': 'https://www.zhihu.com/question/294145797/answer/551162834', 'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'},
    {'image': 'https://img.alicdn.com/tfs/TB1XmFIApzqK1RjSZSgXXcpAVXa-720-338.jpg', 'type': 0, 'id': 8, 'url': 'https://zhuanlan.zhihu.com/p/51696594', 'title': 'Flutter 1.0 正式发布: Google 的便携 UI 工具包'},
    {'image': 'https://img.alicdn.com/tfs/TB1mClCABLoK1RjSZFuXXXn0XXa-600-362.jpg', 'type': 0, 'id': 9, 'url':'https://zhuanlan.zhihu.com/p/53497167','title': 'Flutter 示范应用现已开源 — 万物起源(The History of Everything)'},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        new ModelList(arr),
//        Container(
//          child: Center(
//          child:Column(
//             children:<Widget>[
//                   Text(
//                     'PageOne',
//                     style: TextStyle(color: Colors.redAccent),
//                    ),
//                   RaisedButton(
//                     onPressed: back,
//                     color: Colors.deepOrange,
//                   child: Text(
//                 'PageOne back',
//                   style: TextStyle(color: Colors.white),
//    ),)]),),)
      ]
    );

  }
}
