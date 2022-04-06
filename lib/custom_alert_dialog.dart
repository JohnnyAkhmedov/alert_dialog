import 'package:flutter/material.dart';
import 'dart:io';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                    child: ClipPath(
                      // clipper:NotchedClipper(),
                      child: Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.all(20),
                        height: 300,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Карта заблокирована",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Обратитесь в службу поддержки по номеру 1234",
                                style: TextStyle(fontSize: 17),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("понятно"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
        },
        child: Text("show"),
      ),
      body: Center(
        child: Stack(
          children:[
            Positioned(
              left: 110,
              top: -35,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),

              ),
            ),
            ClipPath(
            clipper: NotchedClipper(),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(right: 40,left: 40,top: 50),
              height: 200,
              width: 300,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Карта заблокирована",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Обратитесь в службу поддержки по номеру 1234",
                      style: TextStyle(fontSize: 17),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("понятно"))
                  ],
                ),
              ),
            ),
          ),

          ]
        ),
      ),
    );
  }
}

class NotchedClipper extends CustomClipper<Path> {


  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(size.width*0.3259333,size.height*0.0036000);
    path0.quadraticBezierTo(size.width*0.3345333,size.height*0.2407333,size.width*0.4998000,size.height*0.2451000);
    path0.quadraticBezierTo(size.width*0.6635667,size.height*0.2392667,size.width*0.6733333,size.height*0.0033333);
    path0.lineTo(size.width*0.9982000,size.height*0.0051333);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(0,0);
    path0.close();
    return path0;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

/*   path.lineTo(0,0);
    var firstStart = Offset(size.width/3,0);
    var firstEnd = Offset(size.width/3,size.height/4);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart=Offset(200,size.height/4);
    var secondEnd=Offset(200,0);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(0,size.width); */
