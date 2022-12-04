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


class Phuluc1Page extends StatefulWidget {
  Phuluc1Page({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Phuluc1PageState createState() => Phuluc1PageState();
}

class Phuluc1PageState extends State<Phuluc1Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(elevation: 6,
          title: Text("Quy trình xử lý kháng thể yếu", style: TextStyle( fontSize: 19,color: Colors.white),),
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
                        'Sự thiếu hụt kháng thể trong huyết tương bệnh nhân là nguyên nhân dẫn đến đến kết quả  bất đồng trong việc định nhóm máu bệnh nhân. Để khắc phục việc này ta tiến hành:\n - Tăng tỉ lệ Huyết tương/Huyết thanh\n - Tăng thời gian ủ để phản ứng xảy ra.',
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
                        '- Lấy lại mẫu bệnh nhân bằng ống Serum để làm phương pháp gián tiếp. Rữa hồng cầu mẫu bệnh nhân ít nhất 3 lần.\n- Pha hồng cầu bệnh nhân sau xử lý 5% ( 25uL +500 uL DG Gel Sol)\n- Pha hồng cầu mẫu bệnh nhân 1% ( 10uL+1000 uL DG Gel Sol)\n- Sử dụng DG Gel ABO/Rh và DG Gel Neutral và hồng cầu mẫu O',
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
                      "Xử lý mẫu",
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
                        '3.1 Thực hiện phản ứng ở nhiệt độ phòng',
                        style: TextStyle(
                          color: Color(0xff28b918),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child:
                      Text(textAlign:TextAlign.justify,
                        '\n- Hút 10 uL hồng cầu bệnh nhân 5% cho vào vi ống A, B, AB, D, CDE, Ctl\n- Hút 50 uL HCM A1 cho vào vi ống N/ A1 và 50 uL HCM B cho vào ống N/B\n- Hút 100 uL huyết thanh bệnh nhân (ống Serum) cho vào mỗi vi ống N/A1 và N/B\n- Ủ ở nhiệt độ phòng trong 30 phút, sau đó quay ly tâm đọc kết quả\n',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child:
                      Text(textAlign:TextAlign.justify,
                        '3.2 Thực hiện phản ứng ở 4 độ C\n',
                        style: TextStyle(
                          color: Color(0xff28b918),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child:
                      Text(textAlign:TextAlign.justify,
                        'Nhóm máu:\n- Hút 10 uL hồng cầu bệnh nhân 5% cho vào vi ống A, B, AB, D, CDE, Ctl, Hút 50 uL HCM A1 cho vào vi ống N/ A1 và 50 uL HCM B cho vào ống N/B.\n- Hút 100 uL huyết thanh bệnh nhân (ống Serum) cho vào mỗi vi ống N/A1 và N/B. Ủ ở 4 oC trong 30- phút Quay ly tâm.\n- Tự chứng bệnh nhân : Hút 50 uL hồng cầu bệnh nhân 1% cho giếng và 25 uL Huyết thanh bệnh nhân cho vào giếng Ủ ở 4 oC trong 30 phút. Quy ly tâm đọc kết quả.\n\nSàng lọc KTBT:\n- Hút 50 uL HCM O1 ,O2 , O3  và 25 uL huyết thanh bênh nhân cho vào từng giếng DG Neutral Card Ủ ở 4 oC trong 30 phút Quay ly tâm đọc kết quả.',
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
                      "Lưu ý",
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
                        '	Kết quả nhóm máu bệnh nhân chấp nhận khi kết quả sàng lọc kháng thể bất thường và và tự chứng bệnh nhân âm tính',
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






