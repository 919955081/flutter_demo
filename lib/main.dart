import 'package:flutter/material.dart';
import 'package:flutter_demo/follow/baseHomeDetail.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_demo/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  //  // that it has a State object (defined below) that contains fields that affect
  //  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final int MAX = 255;
  String changeText;
  int r = 255;
  int g = 0;
  int b = 0;
  bool canInput = false;
  var random = new Random();
  TextEditingController accountController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      r = random.nextInt(MAX);
      g = random.nextInt(MAX);
      b = random.nextInt(MAX);
    });
  }
  void GotoPage(){
    //
    Navigator.push(context, new MaterialPageRoute(builder: (context)=>baseHomeDetail()));
  }
  void onLogin(){
    if(accountController.text.toString() == '123' && pwdController.text.toString() == "123"){
      Fluttertoast.showToast(
          msg: "登录成功",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          textColor: Colors.white,
          fontSize: 16.0
      );
      //跳转
      Navigator.push(context, new MaterialPageRoute(builder: (context)=>new HomePage()));
    }else{
      Fluttertoast.showToast(
          msg: "账户或密码错误，请重试",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          textColor: Colors.white,
          fontSize: 16.0
      );
      onTextClear();
    }
  }
  void onTextClear(){
    setState(() {
      accountController.text = "";
      pwdController.text = "";
      canInput = false;
    });
  }
  void onChangeText(String text){
    setState(() {
      if(text.length>0){
        changeText = text;
      }
      if(accountController.text.toString().length>0&&pwdController.text.toString().length>0){
        canInput = true;
      }else{
        canInput = false;
      }
    });
  }
  void onChangetext(String st){
    setState(() {
      if(accountController.text.toString().length>0&&pwdController.text.toString().length>0){
        canInput = true;
      }else{
        canInput = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build again");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    print("Random背景RGB：${r}\t${g}\t${b}");
    print("Text输入值为：${changeText}");
    return Scaffold(
//      resizeToAvoidBottomPadding:false,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(r, g, b,0.5),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                controller: accountController,
                decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10.0),
                    labelText: "请输入手机号或用户名",
                    icon: Icon(Icons.account_circle)
                ),
//                onChanged: (String str){
//                  onChangeText(str);
//                },
                onChanged: onChangeText,
                onSubmitted: (String str){
                  print("用户提交:$str");
                },
                maxLines: 1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                controller: pwdController,
                decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10.0),
                    labelText: "请输入密码",
                    icon: Icon(Icons.lock)
                ),
//                onChanged: (String str){
//                  onChangetext();
//                },
                onChanged:onChangetext,
                obscureText: true,
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
      SizedBox(
        height: 80,
      ),
      SizedBox(
        width: 300,
            child: RaisedButton(
//              padding: const EdgeInsets.only(left: 10,right: 10),
//              onPressed: canInput?onLogin:null,
              onPressed:(){
//                onLogin();
                GotoPage();
                FocusScope.of(context).requestFocus(FocusNode());
                },
              color: canInput?Colors.blue:Colors.grey,
              highlightColor: Colors.lightBlueAccent,
              disabledColor: Colors.lightBlue,
              child: Text(
                '登录',
                style:  TextStyle(color:Colors.white),
              ),
            )),
//            SizedBox(
////              height:10,
////            ),
            Text(
              '$changeText',
                style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor:Color.fromRGBO(r, g, b,0.5),
        child: Icon(Icons.star),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
