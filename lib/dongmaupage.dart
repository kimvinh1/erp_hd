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
import 'package:erp_hd/lythuyetdongmau.dart';

class DongmauPage extends StatefulWidget {
  DongmauPage({Key? key, required this.item}) : super(key: key);
  final Dongmau item;

  @override
  DongmauPageState createState() => DongmauPageState(item);
}

class DongmauPageState extends State<DongmauPage> {
  Dongmau item;
  DongmauPageState(this.item);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(elevation: 6,
          title: Text(this.item.maloi + '-' + this.item.tenloi, style: TextStyle( fontSize: 18,color: Colors.white),),
          backgroundColor: kPrimaryColor,
        ),
        body:

        ListView(
          physics: ClampingScrollPhysics(),
          children:[
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(9),
                border: Border.all(width: 1,color: Colors.white,),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x338a959e),
                    blurRadius: 0,
                    offset: Offset(0, 8),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "M?? T???",
                    style: TextStyle(
                      color: Color(0xff0633f8),  //0xff232323
                      fontSize: 20,

                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 0),
                  Divider(
                    color: Colors.black38,),
                  SizedBox(
                    width: double.infinity,
                    child:
                    Text(textAlign:TextAlign.justify,
                      this.item.mota,
                      style: TextStyle(
                        color: Color(0xff232323),
                        fontSize: 18,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                border: Border.all(width: 0,color: Colors.white,),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffffffff),
                    blurRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),


             child:
             GestureDetector(
               onTap: () {
                 showImageViewer(context, Image.asset("assets/images/dongmau/" + this.item.hinhanh).image,
                     swipeDismissible: false);
               },
               child: Column(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                     SizedBox(height: 3),
                     Text(
                       "H??NH MINH H???A",
                       style: TextStyle(
                         color: Color(0xff0633f8),  //0xff232323
                         fontSize: 20,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                     Divider(
                       color: Colors.black38,),

               Container(
                 height: 280,
                 child: Image.asset(
                   "assets/images/dongmau/" + this.item.hinhanh,
                   fit: BoxFit.contain,
                 ),
               ),
               Text(textAlign:TextAlign.center,
                      "Nh???n v??o h??nh ????? ph??ng l???n",
                      style: TextStyle(
                        color: Color(0xff232323),
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                ],

             ),
            ),
            ),
              Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(width: 1,color: Colors.white,),

                boxShadow: [
                  BoxShadow(
                    color: Color(0x338a959e),
                    blurRadius: 2,
                    offset: Offset(0, 8),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "PH??N T??CH",
                    style: TextStyle(
                      color: Color(0xff0633f8),
                      fontSize: 20,

                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 0),
                  Divider(
                    color: Colors.black38,),
                  SizedBox(
                    width: double.infinity,
                    child: Text(textAlign:TextAlign.justify,
                      this.item.giaiphap,
                      style: TextStyle(
                        color: Color(0xff232323),
                        fontSize: 18,
                      ),
                    ),
                  ),


                ],

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(9),
                border: Border.all(width: 1,color: Colors.white,),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x338a959e),
                    blurRadius: 0,
                    offset: Offset(0, 8),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "????? XU???T",
                    style: TextStyle(
                      color: Color(0xff0633f8),  //0xff232323
                      fontSize: 20,

                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 0),
                  Divider(
                    color: Colors.black38,),
                  SizedBox(
                    width: double.infinity,
                    child:
                    Text(textAlign:TextAlign.justify,
                      this.item.dexuat,
                      style: TextStyle(
                        color: Color(0xff232323),
                        fontSize: 18,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ]


/*
             DoubleTappableInteractiveViewer(
              scaleDuration: const Duration(milliseconds: 600),
                child: Image.asset(
                  "assets/images/dongmau/" + this.item.hinhanh,
*/
            )




                  );


  }
}






