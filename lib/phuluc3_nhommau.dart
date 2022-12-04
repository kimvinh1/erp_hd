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


class Phuluc3Page extends StatefulWidget {
  Phuluc3Page({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Phuluc3PageState createState() => Phuluc3PageState();
}

class Phuluc3PageState extends State<Phuluc3Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(elevation: 6,
          title: Text("Xét nghiệm nước bọt (Saliva test)", style: TextStyle( fontSize: 19,color: Colors.white),),
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
                        'Một số chất hòa tan kháng nguyên xuất hiện trong dịch tiết nước bọt và dạ dày. Những chất này được gọi là “Secretors”, tiết ra các KN hòa tan ABH. Các KN hòa tan này sẽ ức chế hoặc vô hiệu hóa các kháng thể tương ứng ko xảy ra phản ứng ngưng kết',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 280,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/nhommau/phuluc3_1.png",
                        fit: BoxFit.contain,
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
                      "Chuẩn bị mẫu",
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
                        '- Mẫu nước bọt\n- Anti A, B, Anti H\n- Tube hồng cầu rữa A, B, O  nồng độ 2-5%.',
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
                      "Quy trình thực hiện",
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
                        '- Thu thập mẫu nước bọt bệnh nhân từ 2-3 ml. Ly tâm mẫu 1000 vòng/phút trong 10 phút Hút phần  dịch phía trên sang tube sạch có nắp, để trong bể nước sôi khoảng 10 phút. Ly tâm lại 1000 vòng/phút trong 10 phút Hút phần dịch phía trên sang 1 tube sạch. Pha loãng nước bọt vừa xử lý với nước muối tỉ lệ  (1:1).\n- Điều chỉnh nồng độ anti-A, anti-B, anti-H bằng nước muối sau đó mức độ ngưng kết khoảng 2+\n- Cho 1 giọt anti- A, anti-B, anti- H đã điều chỉnh vào các tube riêng biệt.\n- Thêm 1 giọt nước bọt vào mỗi tube. Lắc đều và ủ ở nhiệt độ phòng trong 10 phút. Thêm 1 giọt HC A, B, O vào mỗi tube tương ứng. Lắc đều và ủ nhiệt độ phòng  60 phút. Ly tâm đọc kết quả trên kính.',
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
                      "Thực hiện QC",
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
                        'Cho 1 giọt anti pha loãng, 1 giọt muối và HC tương ứng.',
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
                      "Biện luận kết quả",
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
                        '- Không có chất hòa tan KN: có sự ngưng kết hồng cầu với hỗn hợp KT và nước bọt.\n- Có chất KN hòa tan: Không có ngưng kết giữa HC với hỗn hợp KT  và nước bọt do KT đã bị trung hòa bởi các chất hòa tan KN trong nước bọt',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
                      ),
                    ),





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






