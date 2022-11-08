import 'package:appledi/screens/CameraScreen.dart';
import 'package:appledi/screens/GalleryScreen.dart';
import 'package:appledi/screens/HistoryScreen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../icons/icons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CameraDescription>? cameras;
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 81, 6, 0),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(MyFlutterApp.apple_alt,color: Colors.white,size: 30,),
                              Text(
                                "Personal Food log App g25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CameraScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 180,
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Color.fromARGB(255, 81, 6, 0),
                            ),
                            Text(
                              'Snap a picture',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 81, 6, 0),
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return GalleryScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 180,
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.image_outlined,
                              color: Color.fromARGB(255, 81, 6, 0),
                            ),
                            Text(
                              'Upload',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 81, 6, 0),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HistoryPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 220,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          
                            Text(
                              'History',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 81, 6, 0),
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 19, 104, 3),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
