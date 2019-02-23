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
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
                color: Colors.lightBlue.withOpacity(0.8)
            ),
            clipper: getClipper() ,
          ),
          Positioned(
            width: 370.0,
            top: MediaQuery.of(context).size.height / 4.5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/user.png'),
                        fit: BoxFit.cover
                    ),
                      borderRadius: BorderRadius.all(Radius.circular(60.0)
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 7.0, color: Colors.lightBlue)
                      ]
                  )
            ),
                SizedBox(height: 30.0,),
                Text(
                  'My User',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'
                  ),
                ),
                SizedBox(height :15.0),
                Text(
                  'exampleemail@gmail.com',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Montserrat',
                    color: Colors.grey
          )
          ),
                SizedBox(height :15.0),
                Text(
                    '+62810334123',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Montserrat',
                        color: Colors.grey
                    )
                ),
                SizedBox(height: 40.0),
                Container(
                    height: 40.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.lightBlueAccent,
                      color: Colors.lightBlue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Ubah',
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
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Keluar',
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
        ],
      )
    )
    ]
      )
    );
    }
  }

  class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

  }


