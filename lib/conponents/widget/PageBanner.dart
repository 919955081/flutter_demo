import 'package:flutter/material.dart';
import 'package:flutter_demo/conponents/msgDetailPage.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
class PageBanner extends StatefulWidget {
  String titledata;
  PageBanner(this.titledata);
  @override
  _PageBannerState createState() => _PageBannerState();
}

class _PageBannerState extends State<PageBanner> {
  SwiperControl _swiperControl;

  final List<dynamic> arr = [
    {'image': 'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg', 'type': 0, 'id': 9695909, 'url': 'https://www.zhihu.com/question/294145797/answer/551162834', 'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'},
    {'image': 'https://img.alicdn.com/tfs/TB1XmFIApzqK1RjSZSgXXcpAVXa-720-338.jpg', 'type': 0, 'id': 9695859, 'url': 'https://zhuanlan.zhihu.com/p/51696594', 'title': 'Flutter 1.0 正式发布: Google 的便携 UI 工具包'},
    {'image': 'https://img.alicdn.com/tfs/TB1mClCABLoK1RjSZFuXXXn0XXa-600-362.jpg', 'type': 0, 'id': 96956491409, 'url':'https://zhuanlan.zhihu.com/p/53497167','title': 'Flutter 示范应用现已开源 — 万物起源(The History of Everything)'},
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("获取的数据：${widget.titledata}");
    _swiperControl = new SwiperControl();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Swiper(
        itemBuilder: swiperBuilder,
          itemCount: arr.length,
        pagination: SwiperPagination(
          builder:  DotSwiperPaginationBuilder(
            color: Colors.black54,
            activeColor: Colors.white,
          ),
        ),
        control: null,
        scrollDirection: Axis.horizontal,
        autoplay: true,
//        loop: true,
        autoplayDelay: 3000,
//        autoplayDisableOnInteraction: true,
        onTap: (index) {
          Fluttertoast.showToast(msg: "点击了$index页");
          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new msgDetailPage()));
        }
      ),
    );
  }

  Widget swiperBuilder(BuildContext context, int index) {
    return (
        new Stack(
          fit: StackFit.expand,

          children: <Widget>[
            Image.network(arr[index]["image"],fit: BoxFit.fill,),
            _buildItemTitle(arr[index]["title"])
          ],
        ));
  }

 Widget _buildItemTitle(String title) {
   return Container(
     decoration: BoxDecoration( ///    背景的渐变色
       gradient:LinearGradient(
         begin: Alignment.bottomCenter,
         end: const Alignment(0.0, -0.8),
         colors: [const Color(0xa0000000), Colors.transparent],
       ),
     ),
     alignment: Alignment.bottomCenter,
     child: Container(
         margin: EdgeInsets.symmetric(vertical: 23.0, horizontal: 16.0),
       child: Text(
         title, style: TextStyle(color: Colors.white, fontSize: 18.0),),),
   );
 }
}
