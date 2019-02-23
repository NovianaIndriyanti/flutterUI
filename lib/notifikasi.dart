import 'package:flutter/material.dart';
import 'bayar.dart';
import 'main.dart';

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
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back),
//          iconSize: 25.0,
//          color: Colors.white,
//          onPressed: () {},
//        ),
        title: new Text(
          'Dalam Proses',
          style: TextStyle(
            fontFamily: 'Quicksand',
            color: Colors.white,
          ),
        ),
      ),


      bottomNavigationBar: Material(
         child : GestureDetector(
           onTap: () {},
           child: TabBar(
             controller: controller,
             indicatorColor: Colors.lightBlue,

             tabs: <Widget>[
               Tab(icon: Icon(Icons.home, color: Colors.grey)),
               Tab(icon: Icon(Icons.notifications, color: Colors.lightBlue)),
               Tab(icon: Icon(Icons.payment, color: Colors.grey))
             ],
           ),
         ),
        color: Colors.white,

      ),
    );
  }
  Widget cardDetails(String title, String imgPath, String value){

    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
          height: 100.0,
          width: (MediaQuery.of(context).size.width / 3) - 20.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.white
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
                SizedBox(height: 2.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(title,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                )
              ]
          )
      ),
    );

  }
}
