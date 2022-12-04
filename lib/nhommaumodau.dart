import 'package:erp_hd/dongmaupage.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'modau.dart';
import "product.dart";
import "package:flutter_speed_dial/flutter_speed_dial.dart";
import "package:erp_hd/dulieunhommau.dart";
import "package:erp_hd/nhommaupage.dart";
import 'package:page_transition/page_transition.dart';
import 'package:page_transition/page_transition.dart';
import 'main.dart';
import 'package:erp_hd/phulucnhommau.dart';

class NhommauMd extends StatefulWidget {
  NhommauMd({Key? key, required this.title}) : super(key: key);
  final String title;

  static const String routeName = '/material/search';
  @override
  _NhommauMdState createState() => _NhommauMdState();
}
class _NhommauMdState extends State<NhommauMd> {
  final items = Nhommau.getnhommau();
  final controller = TextEditingController();
  List<Nhommau> products = Nhommau.getnhommau();

  void searchProduct(String query) {
    final suggestions = Nhommau.getnhommau().where((product) {
      final productName = product.tencase.toLowerCase();
      final input = query.toLowerCase();
      return productName.contains(input);
    }).toList();
    setState(() => products = suggestions);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          toolbarHeight: 62, // default is 56
          //toolbarOpacity: 0.5,
          elevation: 0,
          centerTitle: false,
          backgroundColor: kPrimaryColor,
          title:
          Container( margin: EdgeInsets.fromLTRB(30,0,0,0),child: Text("DANH SÁCH CASE",style: TextStyle( fontSize: 22, color: Colors.white,fontWeight: FontWeight.w700 ),),),
          //
          actionsIconTheme: IconThemeData(
            size: 40,
            color: Colors.white,
          ),
          actions: <Widget>[
            GestureDetector(
            onTap: () { //Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Chuyền vào EAP chi tiết")),);},
            Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: PhulucPage(title: "Chuyền vào phụ lục nhóm máu")));},

            child:
            Image.asset('assets/images/phuluc.png', fit: BoxFit.contain,
              height: 32,)
            /*IconButton(
            icon: const Icon(Icons.access_time_filled_outlined),
            tooltip: 'Show Snackbar',
            onPressed: () {}

          ), */


            /*[Container( margin: EdgeInsets.fromLTRB(30,20,30,10),width: 60,height: 60, child: SvgPicture.asset('assets/images/mitalab4.svg', color: Colors.white),

            ),] */
            )
          ],),
        floatingActionButton: SpeedDial( //Speed dial menu
          //margin bottom
          icon: Icons.help, //icon on Floating action button
          activeIcon: Icons.close, //icon when menu is expanded on button
          backgroundColor: Colors.deepOrangeAccent, //background color of button
          foregroundColor: Colors.white, //font color, icon color in button
          activeBackgroundColor: Colors.deepPurpleAccent, //background color when menu is expanded
          activeForegroundColor: Colors.white,
          visible: true,
          closeManually: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print('OPENING DIAL'), // action when menu opens
          onClose: () => print('DIAL CLOSED'), //action when menu closes

          elevation: 8.0, //shadow elevation of button
          shape: CircleBorder(), //shape of button

          children: [
            SpeedDialChild( //speed dial child
              child: Icon(Icons.phone),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Hotline: 1900 232311 ',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('FIRST CHILD'),
              onLongPress: () => print('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.web),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              label: 'Email: info@mitalabvn.com',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('SECOND CHILD'),
              onLongPress: () => print('SECOND CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.email),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              label: 'Web: mitalab.com ',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('THIRD CHILD'),
              onLongPress: () => print('THIRD CHILD LONG PRESS'),
            ),

            //add more menu item childs here
          ],
        ),

        //background color of scaffold


        body:
        SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20,30,20,20),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: kDefaultPadding / 4, // 5 top and bottom
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  onChanged: searchProduct,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    hintText: 'Nhập cờ báo cần tìm ',
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      onPressed: (){
                        controller.clear();
                      },
                      icon: Icon(Icons.clear, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),

              Expanded(
                child: Stack(

                  children: <Widget>[
                    // Our background
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),


                    ListView.builder(
                      padding: const EdgeInsets.all(15),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];

                        return Card(

                            margin: EdgeInsets.all(5),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                side:  BorderSide(color: Colors.white,width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),

                            child:ListTile(
                              /*leading: Image.asset("assets/images/cobao/" + product.hinhanh,
                                fit: BoxFit.contain,
                                width: 60,
                                height: 70,
                              ),*/
                              title: Text(product.macase + ' ' + product.tencase, style: TextStyle(color: Colors.black, fontSize:18, ), textAlign: TextAlign.left),
                              onTap: () =>
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NhommauPage(item: items[index])
                                    ),
                                  ),
                            )
                        );
                      },
                    ),




                  ],
                ),

              )
            ],

          ),
        )
    );
  }
}