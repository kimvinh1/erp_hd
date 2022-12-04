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


class DongmaultPage extends StatefulWidget {
  DongmaultPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  DongmaultPageState createState() => DongmaultPageState();
}

class DongmaultPageState extends State<DongmaultPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(elevation: 6,
          title: Text("LÝ THUYẾT ĐƯỜNG CONG ĐÔNG MÁU", style: TextStyle( fontSize: 17,color: Colors.white),),
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
                      "ĐƯỜNG CONG ĐÔNG MÁU LÀ GÌ?",
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
                        'Đường cong đông máu là hình ảnh trực quan cho chuỗi phản ứng của các yếu tố đông máu trong huyết tương. Đường cong này được hiển thị ở tất cả kết quả phân tích của bệnh nhân trên các dòng máy xét nghiệm đông máu ACL TOP Family.\n     Đường cong đông máu là một công cụ hữu ích trong phân tích kết quả xét nghiệm đông máu bất thường. Ngoài ra, nó cũng có thể được sử dụng kết hợp với các cảnh báo lỗi và tính năng tiền phân tích trên dòng máy ACL TOP Family để kiểm tra các nguyên nhân do tiền phân tích, thiết bị hay hoá chất,...',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      height: 280,
                      child: Image.asset(
                        "assets/images/dongmau/lythuyet/top.png",
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
                      "CÁC THÀNH PHẦN ĐƯỜNG CONG ĐÔNG MÁU",
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
                        '     Đường cong đông máu bình thường có hình dạng chữ S gồm 4 phần:\n\n - Baseline: Giai đoạn này tương ứng với hoạt hoá các yếu tố đông máu cho tới khi hình thành Thrombin. Trong suốt giai đoạn này thay đổi mật độ quang rất ít nên đường phản ứng đi ngang.\n- Acceleration: Giai đoạn tăng tốc tương ứng với quá trình Thrombin chuyển Fibrinogen thành Fibrin. Trong thời gian này, sự thay đổi mật độ quang diễn ra nhanh chóng, dẫn tới độ dốc đường cong lên cao.\n- Deceleration: Giai đoạn giảm tốc ngay sau giai đoạn tăng tốc và trong giai đoạn này, Thrombin đã chuyển gần hết Fibrinogen thành Fibrin nên sự thay đổi quang nhỏ dần.\n - Endpoint: Tại giai đoạn này toàn bộ Fibrinogen đã chuyển hết thành Fibrin, mật độ quang không thay đổi.',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
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
                      "THUẬT TOÁN SỬ DỤNG TRONG ĐƯỜNG CONG ĐÔNG MÁU",
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
                        '- Đạo hàm bậc 1 (màu hồng): thể hiện tốc độ hình thành cục đông Fibrin. Đỉnh đào hàm bậc 1 là thời điểm tốc độ hình thành cục đông lớn nhất. Ứng dụng tính kết quả xét nghiệm PT, yếu tố ngoại sinh,…\N- Đạo hàm bậc 2 (màu xanh nhạt): thể hiện gia tốc hình thành cục đông Fibrin. Đỉnh đạo hàm bậc 2 là thời điểm gia tốc hình thành cục đông lớn nhất.Ứng dụng tính kết quả xét nghiệm APTT, TT, yếu tố nội sinh, dRVVT,…\N- Thuật toán ngưỡng: thời điểm mật độ quang thay đổi khi Fibrinogen chuyển thành Fibrin. Ứng dụng tính toán kết quả xét nghiệm Fibrinogen.',
                            style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
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
                      "CÁC YẾU TỐ ẢNH HƯỞNG ĐẾN ĐƯỜNG CONG ĐÔNG MÁU",
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
                        'Đường cong đông máu là kết quả của sự phản ứng giữa mẫu bệnh phẩm và hoá chất trên máy phân tích. Bất cứ điều gì ảnh hưởng đến các điều kiện dưới đây đều có thể gây ảnh hưởng đến đường cong đông máu cũng như kết quả bệnh nhân.',
                        style: TextStyle(
                          color: Color(0xff232323),
                          fontSize: 18,
                        ),
                      ),
                    ),

                      GestureDetector(
                        onTap: () {
                          showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/anhhuong.png").image,
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
                                "assets/images/dongmau/lythuyet/anhhuong.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Hình 6: Các yếu tố ảnh hưởng đến đường cong đông máu",
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
                      "FLOWCHART XỬ LÝ KẾT QUẢ ĐÔNG MÁU BẤT THƯỜNG",
                      style: TextStyle(
                        color: Color(0xff0633f8),  //0xff232323
                        fontSize: 20,

                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 0),
                    Divider(
                      color: Colors.black38,),

                      GestureDetector(
                        onTap: () {
                          showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/flowchart.png").image,
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
                                "assets/images/dongmau/lythuyet/flowchart.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Hình 7: Flowchart xử lý kết quả đông máu bất thường",
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


                    SizedBox(
                      width: double.infinity,
                      child:
                      Text(textAlign:TextAlign.justify,
                        'Khi anh/chị nhìn vào một đường cong phản ứng luôn luôn nhớ đến các vấn đề sau:\n-	Nhìn thang đo của trục "Y" trên đồ thị ... là một dải hấp phụ rộng hay hẹp. Hệ thống luôn luôn tối đa hóa các đường cong để phù hợp với toàn bộ cửa sổ . Quan sát trục "Y" là cách duy nhất để xác định chênh lệch giữa đường baseline và điểm endpoint.\n-	Hình dạng của đường cong, nó cần phải có 3 phân đoạn: cơ sở (baseline) , tăng tốc, và ổn định.\n-	Kết quả đọc ở điểm ban đầu và điểm cuối là gì \n-	Chú ý các đường thẳng đứng màu đỏ biểu thị các điểm đông.',
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
                      "HIỂN THỊ ĐƯỜNG CONG ĐÔNG MÁU TRÊN HỆ ACL TOP",
                      style: TextStyle(
                        color: Color(0xff0633f8),  //0xff232323
                        fontSize: 20,

                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 0),
                    Divider(
                      color: Colors.black38,),

                      GestureDetector(
                        onTap: () {
                          showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/hienthi1.png").image,
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
                                "assets/images/dongmau/lythuyet/hienthi1.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Hình 8: Các bước hiển thị đường cong đông máu trên hệ ACL TOP",
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
                          showImageViewer(context, Image.asset("assets/images/dongmau/lythuyet/vitrimaloi.png").image,
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
                                "assets/images/dongmau/lythuyet/vitrimaloi.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "Hình 9: Vị trí bảng mã lỗi và đường cong",
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


                    SizedBox(
                      width: double.infinity,
                      child:
                      Text(textAlign:TextAlign.justify,
                        'Khi anh/chị nhìn vào một đường cong phản ứng luôn luôn nhớ đến các vấn đề sau:\n-	Nhìn thang đo của trục "Y" trên đồ thị ... là một dải hấp phụ rộng hay hẹp. Hệ thống luôn luôn tối đa hóa các đường cong để phù hợp với toàn bộ cửa sổ . Quan sát trục "Y" là cách duy nhất để xác định chênh lệch giữa đường baseline và điểm endpoint.\n-	Hình dạng của đường cong, nó cần phải có 3 phân đoạn: cơ sở (baseline) , tăng tốc, và ổn định.\n-	Kết quả đọc ở điểm ban đầu và điểm cuối là gì \n-	Chú ý các đường thẳng đứng màu đỏ biểu thị các điểm đông.',
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






