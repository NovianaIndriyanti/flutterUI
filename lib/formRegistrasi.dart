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

class _MyHomePageState extends State<MyHomePage> {
    List<String> scroll = new List();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body:
//      ListView(
//        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
//        children: <Widget>[
//          Container(
//            height: double.infinity,
//            child: ListView(
//              scrollDirection: Axis.vertical,
//              padding: EdgeInsets.all(10.0),
//              children: <Widget>[

            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Stack(
                        children: <Widget>[

                          Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                                  child: Text('Register',
                                    style: TextStyle(
                                        fontSize: 50.0, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.fromLTRB(200.0, 50.0, 0.0, 0.0),
                                    child: Text(':',
                                      style: TextStyle(
                                          fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                                    )
                                ),

                              ],
                            ),
                          )
                        ]
                    )
                ),
                Container(
                    padding: EdgeInsets.only(top: 0.15, left: 20.0, right: 20.0),
                    child: Column(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color:  Colors.grey
                                  ),
                                  focusedBorder:
                                  UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlue),
                                  )
                              )
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  labelText: 'Nomer HP',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color:  Colors.grey
                                  ),
                                  focusedBorder:
                                  UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlue),
                                  )
                              )
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color:  Colors.grey
                                  ),
                                  focusedBorder:
                                  UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.lightBlue),
                                  )
                              )
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color:  Colors.grey
                                ),
                                focusedBorder:
                                UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.lightBlue),
                                )
                            ),
                            obscureText: true,
                          ),
                          TextField(

                            decoration: InputDecoration(

                                labelText: 'Input Ulang Password',
                                labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color:  Colors.grey
                                ),
                                focusedBorder:
                                UnderlineInputBorder(

                                  borderSide: BorderSide(color: Colors.lightBlue),
                                )
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 40.0),
                          Container(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.lightBlueAccent,
                                color: Colors.lightBlue,
                                elevation: 7.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'SIMPAN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0,

                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: ImageIcon(AssetImage('assets/facebook.png')),
                                ),
                                SizedBox(width: 5.0),
                                Center(
                                  child: Text('Masuk dengan akun Facebook',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'
                                    ),),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0,

                                ),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: ImageIcon(AssetImage('assets/google.png')),
                                ),
                                SizedBox(width: 10.0),
                                Center(
                                  child: Text('Masuk dengan akun Google',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'
                                    ),),
                                )
                              ],
                            ),
                          )
                        ]
                    )
                ),
                  ],
                )
            );
  }
}