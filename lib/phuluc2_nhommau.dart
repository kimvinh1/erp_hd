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


class Phuluc2Page extends StatefulWidget {
  Phuluc2Page({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Phuluc2PageState createState() => Phuluc2PageState();
}

class Phuluc2PageState extends State<Phuluc2Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(elevation: 6,
          title: Text("Phương pháp hấp phụ Hồng cầu O", style: TextStyle( fontSize: 19,color: Colors.white),),
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
                      "Nguyên lý",
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
                        '- Kháng thể tự miễn, kháng thể lạnh, kháng lại kháng nguyên phổ biến nhưng dễ bị hấp phụ bởi hồng cầu O (đã rửa).\n- Khi cho huyết thanh bệnh nhân hấp phụ với hồng cầu O. Sau đó dùng Huyết thanh đã hấp phụ định lại nhóm máu gián tiếp bệnh nhân.',
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
                      "Chuẩn bị",
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
                        'Bệnh nhân: lấy mẫu huyết thanh Hồng cầu mẫu O1 O2 O3 (Grifols) và hồng cầu mẫu A1 ,B (Grifols).',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    /*
                    GestureDetector(
                      onTap: () {
                        showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/duongcong.png").image,
                            swipeDismissible: false);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(height: 3),

                          Container(
                            height: 200,
                            child: Image.asset(
                              "assets/images/dongmau/lythuyet/duongcong.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            "Hình 2: Mô tả đường cong đông máu",
                            style: TextStyle(
                                color: Color(0xff0633f8),  //0xff232323
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic
                            ),
                          ),

                        ],

                      ),
                    ),
                    */




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
                      "Tiến hành",
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
                        '- Hút 1 ml HCM O1 O2 O3   cho vào ống sạch. Quay ly tâm, rút bỏ phần dung dịch bảo quản, lấy phần HC lắng\n- Hút 0.5 ml Huyết thanh BN cho ống HCM O trên. Lắc đều, để yên 15 phút ở nhiệt độ phòng. Quay ly tâm, hút phần Huyết thanh sau xử lý định lại nhóm máu gián tiếp bằng phương pháp Card ',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 18,
                        ),
                      ),
                    ),

                    /*
    GestureDetector(
                      onTap: () {
                        showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/duongcong.png").image,
                            swipeDismissible: false);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(height: 3),

                          Container(
                            height: 280,
                            child: Image.asset(
                              "assets/images/dongmau/lythuyet/pt.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            "Hình 3: Đạo hàm bậc 1 (màu hồng)",
                            style: TextStyle(
                                color: Color(0xff0633f8),  //0xff232323
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic
                            ),
                          ),

                        ],

                      ),
                    ),




                    GestureDetector(
                      onTap: () {
                        showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/duongcong.png").image,
                            swipeDismissible: false);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(height: 3),

                          Container(
                            height: 280,
                            child: Image.asset(
                              "assets/images/dongmau/lythuyet/aptt.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            "Hình 4: Đạo hàm bậc 2 (màu xanh)",
                            style: TextStyle(
                                color: Color(0xff0633f8),  //0xff232323
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic
                            ),
                          ),

                        ],

                      ),
                    ),



                    GestureDetector(
                      onTap: () {
                        showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/duongcong.png").image,
                            swipeDismissible: false);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          SizedBox(height: 3),

                          Container(
                            height: 280,
                            child: Image.asset(
                              "assets/images/dongmau/lythuyet/fib.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            "Hình 5: Thuật toán ngưỡng cho Fibrinogen (màu cam)",
                            style: TextStyle(
                                color: Color(0xff0633f8),  //0xff232323
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic
                            ),
                          ),

                        ],

                      ),
                    ),
                    */

                  ],
                ),
              ),






            ] //group widget

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






