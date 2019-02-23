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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                  child: Text('Hey',
                  style: TextStyle(
                    fontSize: 75.0, fontWeight: FontWeight.bold),
                  ),
                ),
    Container(
    child: Stack(
    children: <Widget>[
    Container(
    padding: EdgeInsets.fromLTRB(15.0, 130.0, 0.0, 0.0),
    child: Text('Fellas',
    style: TextStyle(
    fontSize: 75.0, fontWeight: FontWeight.bold),
    ),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(215.0, 130.0, 0.0, 0.0),
    child: Text('!',
    style: TextStyle(
    fontSize: 75.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    )
    ),

        ],
      ),
    )
  ]
    )
    ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                      labelText: 'E-MAIL',
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
                        labelText: 'PASSWORD',
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
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    child: Text('Lupa Password?',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline
    )
    ),
    )
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
    'MASUK',
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
      SizedBox(height: 15.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Baru menggunakan Fast Courier?',
            style: TextStyle(
              fontFamily: 'Montserrat'
            ),
          ),
          SizedBox(
            width: 5.0
          ),
          InkWell(
            onTap: () {},
            child: Text('Registrasi',
            style: TextStyle(
              color: Colors.lightBlue,
              fontFamily: 'Monstserrat',
                fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline
            ),),
          )
        ],
      )
    ]
      )
    );
  }
}