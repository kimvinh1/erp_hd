import 'package:flutter/material.dart';
import 'dart:async';
import 'style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'modau.dart';
import "package:flutter_speed_dial/flutter_speed_dial.dart";
import "dulieudongmau.dart";
import "package:pinch_zoom/pinch_zoom.dart";
import 'package:full_screen_image/full_screen_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:page_transition/page_transition.dart';
import 'main.dart';
import 'phuluc1_nhommau.dart';
import 'phuluc2_nhommau.dart';
import 'phuluc3_nhommau.dart';

class PhulucPage extends StatefulWidget {
  PhulucPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  PhulucPageState createState() => PhulucPageState();
}

class PhulucPageState extends State<PhulucPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: Color(0xFF363f93),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 80,
                        left: 0,
                        child: Container(
                          height: 80,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              )
                          ),

                        )
                    ),
                    Positioned(
                        top: 95,
                        left: 20,
                        child: Text('PHỤ LỤC', style: TextStyle(fontWeight: FontWeight.w800,
                            fontSize: 30, color: Color(0xFF363f93)),)

                    )
                  ],
                ),
            ),

            Expanded(child:
                ListView(
                  children: [
                    GestureDetector(
                    onTap: () { //Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Chuyền vào EAP chi tiết")),);},
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: Phuluc1Page(title: "Chuyền vào phụ lục 1")));},
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 0, top: 0),
                      height: 166,
                      padding:
                      const EdgeInsets.only(left: 20, right:  20, bottom: 20),
                      child:Container(
                        decoration: BoxDecoration(
                          color: Color(0xFf363f93),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF363f93).withOpacity(0.3),
                              offset: Offset(-10.0, 0.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0),
                            ],
                        ),
                        padding: EdgeInsets.only(
                          left: 32,
                          top: 25,
                          bottom: 50,
                          ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Phụ luc 1', style: TextStyle(color: Colors.white,fontSize: 20,),),
                            SizedBox(height: 2,),
                            Text ('Quy trình xử lý kháng thể yếu',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800),),
                          ]
                        ),
                      )
                    ),
                    ),

                      GestureDetector(
                      onTap: () { //Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Chuyền vào EAP chi tiết")),);},
                      Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: Phuluc2Page(title: "Chuyền vào phụ lục 2")));},
                        child: Container(
                        margin: const EdgeInsets.only(bottom: 0, top: 5),
                        height: 166,
                        padding:
                        const EdgeInsets.only(left: 20, right:  20, bottom: 20),
                        child:Container(
                          decoration: BoxDecoration(
                            color: Color(0xFf363f93),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF363f93).withOpacity(0.3),
                                  offset: Offset(-10.0, 0.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 4.0),
                            ],
                          ),
                          padding: EdgeInsets.only(
                            left: 32,
                            top: 25,
                            bottom: 20,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Phụ luc 2', style: TextStyle(color: Colors.white,fontSize: 20,),),
                                SizedBox(height: 2,),
                                Text ('Phương pháp hấp phụ Hồng cầu O',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800),),
                              ]
                          ),
                        )
                    ),
                      ),
                    GestureDetector(
                    onTap: () { //Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Chuyền vào EAP chi tiết")),);},
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: Phuluc3Page(title: "Chuyền vào phụ lục 3")));},
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 5),
                        height: 166,
                        padding:
                        const EdgeInsets.only(left: 20, right:  20, bottom: 20),
                        child:Container(
                          decoration: BoxDecoration(
                            color: Color(0xFf363f93),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF363f93).withOpacity(0.3),
                                  offset: Offset(-10.0, 0.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 4.0),
                            ],
                          ),
                          padding: EdgeInsets.only(
                            left: 32,
                            top: 25,
                            bottom: 0,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Phụ luc 3', style: TextStyle(color: Colors.white,fontSize: 20,),),
                                SizedBox(height: 2,),
                                Text ('Xét nghiệm nước bọt (Saliva test)',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800),),
                              ]
                          ),
                        )
                    ),
                    ),


                  ],
                )
            )
          ],
        )

    );
  }
}