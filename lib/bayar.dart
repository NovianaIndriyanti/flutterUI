import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  int getColorHexFronStr(String coloStr){
    coloStr = "FF" + coloStr;
    coloStr = coloStr.replaceAll("#", "");
    int val = 0;
    int len = coloStr.length;
    for(int i = 0; i < len; i++){
      int hexDigit = coloStr.codeUnitAt(i);
      if(hexDigit >= 48 && hexDigit <= 57){
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      }else if(hexDigit >= 65 && hexDigit <= 70){
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      }else if(hexDigit >= 97 && hexDigit <= 102){
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      }else{
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= new TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(getColorHexFronStr('#00BFFF')),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 25.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: new Text(
          'Pilih Metode Pembayaran',
          style: TextStyle(
            fontFamily: 'Quicksand',
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
        child: Container(
          padding: EdgeInsets.only(left: 10.0),
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
