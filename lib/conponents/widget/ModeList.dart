import 'package:flutter/material.dart';
import 'package:flutter_demo/conponents/widget/PageBanner.dart';
import 'package:http/http.dart'as http;

class ModelList extends StatefulWidget {
  List<dynamic> arr;
  ModelList(this.arr);
  @override
  _ModelListState createState() => _ModelListState();
}

class _ModelListState extends State<ModelList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-140,
      width: MediaQuery.of(context).size.width,
      child: RefreshIndicator(
          child:  ListView.builder(
        itemBuilder: _listItemBuild,
        itemCount: widget.arr.length,
        scrollDirection: Axis.vertical,
      ), onRefresh: _onRefresh),
    );
  }

  Widget _listItemBuild(BuildContext context, int index) {
    return Container(
        decoration: BoxDecoration( ///    背景的渐变色
        gradient:LinearGradient(
        begin: Alignment.bottomCenter,
        end: const Alignment(0.0, -0.8),
    colors: [const Color(0xa0000000), Colors.transparent],
    ),
    ),
    alignment: Alignment.bottomCenter,
    child: widget.arr[index]["id"]==0?new PageBanner("测试"):Container(
    margin: EdgeInsets.symmetric(vertical: 23.0, horizontal: 16.0),
    child: Row(
          children: <Widget>[
              Image.network(
                widget.arr[index]["image"],
                fit: BoxFit.fill,
                width: 140,
                height: 80,
              ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child:  Text(
              widget.arr[index]["title"],
//                  "2222222222222222222222222222222",
//                  maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
            ],
        ),),);
  }

  Future<Null> _onRefresh() async{
      var url = "https://api.douban.com/v2/movie/in_theaters";
      http.Response response = await http.get(url);
      response.body.toString();
      print('请求的json数据：${response.body}');
      return null;
  }

}
