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
      body: ListView(
          children: <Widget>[
            Column(
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        Container(
                          height: 250.0,
                          width: double.infinity,
                          color: Color(getColorHexFronStr('#00BFFF')),
                        ),
                        Positioned(
                            bottom: 50.0,
                            right: 100.0,
                            child: Container(
                                height: 400.0,
                                width: 400.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200.0),
                                  color: Color(getColorHexFronStr('#FFFFFF'))
                                      .withOpacity(0.1),
                                )
                            )
                        ),
                        Positioned(
                            bottom: 100.0,
                            left: 150.0,
                            child: Container(
                                height: 300.0,
                                width: 300.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200.0),
                                  color: Color(getColorHexFronStr('#FFFFFF'))
                                      .withOpacity(0.2),
                                )
                            )
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start  ,
                          children: <Widget>[
                            SizedBox(height: 15.0,),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 15.0),
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2.0
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage('assets/user.png')
                                      )

                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Mr. FCourier',
                                      style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                        '1234567890',
                                        style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: Colors.black.withOpacity(0.7)
                                        )
                                    ),
                                  ],
                                ),
//                                SizedBox(width: MediaQuery.of(context).size.width - 270.0),
//                                Container(
//                                    alignment: Alignment.topRight,
//                                    child: IconButton(
//                                      icon: Icon(Icons.menu),
//                                      onPressed: (){},
//                                      color: Colors.white,
//                                      iconSize: 30.0,
//                                    )
//                                ),
                                SizedBox(height: 15.0)
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Padding(padding: EdgeInsets.only(top: 80.0)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                          icon: Icon(Icons.account_box),
                                              color:  Colors.white,
                                        iconSize: 40.0,
                                        onPressed: () {},
                                      ),
                                      Text(
                                       'Akun',
                                       style: TextStyle(
                                         fontFamily: 'Quicksand',
                                         fontSize: 15.0,
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold
                                       ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(Icons.account_balance_wallet),
                                        color:  Colors.white,
                                        iconSize: 40.0,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        'Kupon',
                                        style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

//
                              ],
                            )
                          ],
                        )
                      ]
                  ),

            SizedBox(height: 30.0),
            Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      cardDetails('FastCar', 'assets/car.png',''),
                      cardDetails('FastBike', 'assets/motor.png',''),
                      cardDetails('FastCourier', 'assets/courier.png','')

                    ],
                  ),
                ]

            ),
    Container(
    child: Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      ),
      Text(
        'Berita Hari Ini!',
    style: TextStyle(
        fontFamily: 'Quicksand',
        fontSize: 25.0,
        fontWeight: FontWeight.bold,

    ),
      )
    ]
    )
    )
          ]
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.lightBlue,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home, color: Colors.lightBlue)),
            Tab(icon: Icon(Icons.notifications, color: Colors.grey)),
            Tab(icon: Icon(Icons.payment, color: Colors.grey))
          ],
        ),
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
