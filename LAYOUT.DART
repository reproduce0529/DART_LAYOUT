import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "플러터 실기",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(children: [
                Expanded(
                  child: Text('23:40'),
                ),
                Icon(Icons.bluetooth),
                Icon(Icons.wifi),
                Icon(Icons.signal_cellular_alt),
                Icon(Icons.battery_full)
              ])),
          extendBodyBehindAppBar: true,
          body: Container(
              padding:
                  EdgeInsets.only(top: 42, left: 42, right: 42, bottom: 42),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://png.pngtree.com/thumb_back/fw800/back_our/20200814/ourmid/pngtree-simple-background-of-multiple-color-gradient-app-interface-materials-png-image_392301.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(top: 50, bottom: 40),
                      child: Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'ID',
                        prefixIcon: Icon(Icons.account_box),
                        suffixIcon: Icon(
                          Icons.check_circle_rounded,
                          color: Colors.green,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'PW',
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: Icon(
                          Icons.check_circle_rounded,
                          color: Colors.green,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo.shade400,
                        shape: StadiumBorder(),
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      child: Text('Login'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Forgot your password?",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    width: 250,
                      height: 180,
                    margin : EdgeInsets.only(top : 20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    
                    child: Stack(children: [
                        Positioned(
                          bottom: 0,
                          left: 15,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 30,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 65,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          left: 80,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ])
                    
                  ),
                  
                  
                  
                     Container(
                    margin: EdgeInsets.only(top: 60, bottom: 40),
                    child: Text("or connect with"),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              textStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.facebook),
                                Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text('Facebook')),
                              ],
                            ),
                          ),
                        ),
                        Container(width: 10),
                        Container(
                          width: 150,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              shape: StadiumBorder(),
                              textStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.flutter_dash),
                                Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text('Twitter')),
                              ],
                            ),
                          ),
                        )
                      ]),
                  Container(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Dont have account? "),
                    Text("Sign up", style: TextStyle(color: Colors.indigo))
                  ])
                ]),
              )),
        ));
  }
}
