import 'package:flutter/material.dart';
import 'dart:async';
import 'style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main.dart';

class ManhinhEAP extends StatelessWidget {
  const ManhinhEAP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Màn hình lựa chọn vào EAP',
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 62, // default is 56
            //toolbarOpacity: 0.5,
            elevation: 3,
            centerTitle: true,
            backgroundColor: kPrimaryColor,

            title:Container( margin: EdgeInsets.fromLTRB(15,15,0,0),child: Text("DANH SÁCH CỜ BÁO",style: TextStyle( fontSize: 20, color: Colors.white, ),),),
            //fontWeight: FontWeight.w700

            //actions: [Container( margin: EdgeInsets.fromLTRB(30,20,30,10),width: 60,height: 60, child: SvgPicture.asset('assets/images/mitalab4.svg', color: Colors.white),

            ),


        body:
            Container(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                alignment: Alignment.center,
                child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[Container(

                         width: 400,
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              boxShadow: [BoxShadow(
                                color: Color(0x338a959e),
                                blurRadius: 40,
                                offset: Offset(0, 8),
                              ),
                              ],
                              color: Colors.white,
                         ),

                            child: Column(

                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(textAlign:TextAlign.justify,
                                "EAP HUYẾT HỌC",
                                style: TextStyle(
                                  color: Color(0xff232323),
                                  fontSize: 18,

                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),

                              ),
                              SizedBox(height: 12),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Các thông tin mô tả và hướng xử lý cho các cờ báo trên hệ thống DxH của Beckman Coulter",
                                  style: TextStyle(
                                    color: Color(0xff909090),
                                    fontSize: 14,

                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              ElevatedButton.icon(
                                icon: Icon(Icons.arrow_circle_right, size: 26),
                                label: Text('VÀO', style: TextStyle(fontSize: 13),),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    fixedSize: const Size(100, 30),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                                onPressed: () {Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) =>
                                      MyHomePage(title: "Chuyền vào EAP chi tiết")),);},
                              ),


                        ],
                          ),

                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15, ),

            ),
                      SizedBox(height: kDefaultPadding ),
                      Container(
                        width: 400,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [ BoxShadow(
                             color: Color(0x338a959e),
                             blurRadius: 40,
                             offset: Offset(0, 8),
                           ),
                         ],
                         color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15, ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[Text(
                             "EAP ĐÔNG MÁU",textAlign:TextAlign.justify,
                               style: TextStyle(
                               color: Color(0xff232323),
                               fontSize: 18,
                               fontWeight: FontWeight.w600,
                             ),
                            ),
                            SizedBox(height: 12),
                            Container(
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                ),

                           ),
                           SizedBox(height: 12),
                           SizedBox(
                              width: double.infinity,
                              child: Text(
                               "Các thông tin về đường cong đông máu và các lỗi liên quan trên hệ thống ACL TOP 50 Family",
                               style: TextStyle(
                                 color: Color(0xff909090),
                                 fontSize: 14,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: kDefaultPadding ),

                  ]
                ),
            ),
        )
    );
  }
}


/*
body:
            Container(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                alignment: Alignment.center,
                child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[Container(

                         width: 400,
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              boxShadow: [BoxShadow(
                                color: Color(0x338a959e),
                                blurRadius: 40,
                                offset: Offset(0, 8),
                              ),
                              ],
                              color: Colors.white,
                         ),

                          child:GestureDetector(
                            onTap: () {Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) =>
                              MyHomePage(title: "Chuyền vào EAP chi tiết")),);},

                            child: Column(

                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(textAlign:TextAlign.justify,
                                "EAP HUYẾT HỌC",
                                style: TextStyle(
                                  color: Color(0xff232323),
                                  fontSize: 18,

                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 12),
                              Container(
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),

                              ),
                              SizedBox(height: 12),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Các thông tin mô tả và hướng xử lý cho các cờ báo trên hệ thống DxH của Beckman Coulter",
                                  style: TextStyle(
                                    color: Color(0xff909090),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15, ),

            ),
                      SizedBox(height: kDefaultPadding ),
                      Container(
 */