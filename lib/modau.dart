import 'package:erp_hd/gioithieu.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main.dart';
import "dongmaupage.dart";
import "dongmaumodau.dart";
import 'package:page_transition/page_transition.dart';
import "package:erp_hd/nhommaumodau.dart";
import "gioithieu.dart";
import 'package:url_launcher/url_launcher.dart';




class ManhinhEAP extends StatefulWidget {
  @override
  _ManhinhEAPState createState() => _ManhinhEAPState();
}

class _ManhinhEAPState extends State<ManhinhEAP> with SingleTickerProviderStateMixin {
/*
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation ;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, duration: Duration(seconds: 3))..forward();
    _offsetAnimation =  Tween<Offset>(
        begin: Offset.zero,
      end: const Offset(1.5, 1.5),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
    _controller.addListener((){
      setState((){});
    });
    _controller.forward();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
*/


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Container(
            child: Image.asset('assets/images/logo_minhtam_trang.png',fit: BoxFit.cover,height: 45,),
           ),
          centerTitle: true,
        ),

        drawer: Drawer(
            width: MediaQuery.of(context).size.width * 0.75,
            child: ListView(
    // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                   UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color:  Colors.lightGreen),
                    accountName: Text("EAP - DMHH", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                      ),
                    ),
                    accountEmail: Text(" ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13
                      ),
                    ),
                    currentAccountPicture: Container(
                      //margin: const EdgeInsets.only(bottom: 40.0),
                      width: 30.0,
                      height: 30.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/mitalab_n.png',
                          ),
                        ),
                      ),
                    ),

                    ),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: const Text('Gi???i thi???u'),
                      onTap: ()  =>
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              GioithieuPage(title: 'Chuyen vao trang gi???i thi???u',)
                      ),
                    ),
                    ),

                  ListTile(
                    leading: Icon(
                      Icons.feedback_rounded,
                    ),
                    title: const Text('G??p ??'),
                    onTap:() async {
                      final url = Uri.parse(
                  'https://docs.google.com/forms/d/e/1FAIpQLSecyhQ2D_-Q8HML79iMNGUhdX4P6gvwF92G8MM2zaZggpPttA/viewform?usp=sf_link',
                    );
                    if (await canLaunchUrl(url)) {
                  launchUrl(url);
                    } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              },
                  ),

                    AboutListTile( // <-- SEE HERE
                      icon: Icon(
                        Icons.info,
                      ),
                      child: Text('Phi??n b???n'),
                      applicationIcon: Icon(
                        Icons.local_play,
                      ),
                      applicationName: 'EAP DMHH',
                      applicationVersion: '1.0.0',
                      applicationLegalese: '??Ph??ng ???ng D???ng S???n Ph???m - Mitalab',
                      aboutBoxChildren: [
                        ///Content goes here...
                      ],
                    ),
                  ],
                ),
              ),

        body:
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*
              Container(
                width: double.infinity,
                height: 100,

                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF3B0EE8),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 42, 0, 0),
                    child: Text(
                      'XIN CH??O!',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                        fontFamily: 'Space Grotesk',
                        fontSize: 25, color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ),
              ),
              */

                 Expanded(
                   child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        'DANH S??CH EAP',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                          fontFamily: 'Outfit',
                          color: Color(0xFF0E37E5),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ),
                    Align(
                    /*SlideTransition(
                      position: _offsetAnimation,
                    */
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                        child: GestureDetector(
                        onTap: () { //Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Chuy???n v??o EAP chi ti???t")),);},
                          Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: MyHomePage(title: "Chuy???n v??o EAP chi ti???t")));},

                          child: Container(
                        child: Column (
                          children: [
                            Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/huyethoc.png',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(
                                    0.8999999999999999, -0.09999999999999998),
                              ),
                            ),
                            ),

                            Align(
                              alignment: AlignmentDirectional(-1, 0.05),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                                child: Text(
                                  'HUY???T H???C',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFE02020),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                )
                              ),
                            ),
                          ],
                        )
                        )
                        )
                      ),

                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                        child: GestureDetector(
                        onTap: () {Navigator.push( context, MaterialPageRoute(builder: (context) => NhommauMd(title: "Chuy???n v??o EAP chi ti???t")),);},
                        child: Container(
                          child: Column (
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.65, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    // color: Color(0xFF4B39EF),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/ptcaa6-blood-types1.jpg',
                                      ),
                                    ),

                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 1),
                                      )
                                    ],


                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.5, 0),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(45, 5, 0, 0),
                                child: Text(
                                  'NH??M M??U',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFE02020),
                                    fontSize:22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            )
                          ],
                          )
                        )
                        )
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.7, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: GestureDetector(
                        onTap: () {Navigator.push( context, MaterialPageRoute(builder: (context) => DongmauMd(title: "Chuy???n v??o EAP ????NG M??U")),);},
                        child: Container(
                          child: Column (
                          children: [
                              Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(

                              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/dongmau.png',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 1),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(
                                    0.8999999999999999, -0.09999999999999998),
                              )
                            ),
                          ),
                             Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  '????NG M??U',
                                      style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFE02020),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            ),

                          ],

                          )
                        )
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

      );
  }
}





/*
class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "assets/calendar.png");

  Items item2 = new Items(
    title: "Groceries",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "Locations",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Activity",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "To do",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({required this.title, required this.subtitle, required this.event, required this.img});
}






class ManhinhEAP extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<ManhinhEAP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Johny s Family",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/notification.png",
                    width: 24,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}
*/

/* C?? gi??? l???i
class ManhinhEAP extends StatelessWidget {
  const ManhinhEAP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M??n h??nh l???a ch???n v??o EAP',
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 62, // default is 56
            //toolbarOpacity: 0.5,
            elevation: 3,
            centerTitle: true,
            backgroundColor: kPrimaryColor,

            title:Container( margin: EdgeInsets.fromLTRB(15,15,15,0),child: Text("DANH S??CH EAP",style: TextStyle( fontSize: 22, color: Colors.white,fontWeight: FontWeight.w900, ),),),
            //fontWeight: FontWeight.w700

            //actions: [Container( margin: EdgeInsets.fromLTRB(30,20,30,10),width: 60,height: 60, child: SvgPicture.asset('assets/images/mitalab4.svg', color: Colors.white),

            ),


        body:
            Container(
                padding: const EdgeInsets.fromLTRB(40, 40, 40, 60),
                child:  Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[
                        /*{Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) =>
                                      MyHomePage(title: "Chuy???n v??o EAP chi ti???t")),);}, */
                    GestureDetector(
                    onTap: () {Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Chuy???n v??o EAP chi ti???t")),);},
                      child: Container(

                         width: 230,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: new AssetImage(
                                 'assets/images/Dxh900a3.png'),
                               alignment: Alignment.centerLeft,
                           ),
                            borderRadius: BorderRadius.circular(50),
                              boxShadow: [BoxShadow(
                                color: Color(0x338a959e),
                                blurRadius: 20,
                                offset: Offset(0, 0),
                              ),
                              ],
                              color: Colors.white,
                         ),

                            child: Column(

                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:[
                              SizedBox(
                              width: 160,
                              height: 20,
                              child:
                              Text(textAlign:TextAlign.center,
                                "HUY???T H???C",
                                style: TextStyle(
                                  color: Color(0xffe8473a),
                                  fontSize: 18,

                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),

                              ),
                              SizedBox(height: 3),
                              SizedBox(
                                width: 160,

                                child: Text(
                                  textAlign:TextAlign.center,
                                  "C??c th??ng tin m?? t??? v?? h?????ng x??? l?? cho c??c c??? b??o tr??n h??? th???ng DxH c???a Beckman Coulter",
                                  style: TextStyle(
                                    color: Color(0xff232320),
                                    fontSize: 14,

                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              SizedBox(
                                width: 160,
                                child:


                              ElevatedButton.icon(
                                icon: Icon(Icons.arrow_circle_right, size: 26),
                                label: Text('V??O', style: TextStyle(fontSize: 13),),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    fixedSize: const Size(100, 30),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                                onPressed: () {Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) =>
                                      MyHomePage(title: "Chuy???n v??o EAP chi ti???t")),);},
                              ),
                              )
                              ],
                          ),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15, ),

                      ),
                        ),




                      SizedBox(height: kDefaultPadding ),
                      Container(
                        width: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage(
                                'assets/images/acltop.png'),
                            alignment: Alignment.centerLeft,
                          ),
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                          children:[
                          SizedBox(
                            width: 140,
                            height: 20,
                            child:
                            Text(textAlign:TextAlign.center,
                              "EAP ????NG M??U",
                              style: TextStyle(
                                color: Color(0xffe8473a),
                                fontSize: 18,

                                fontWeight: FontWeight.w600,
                              ),
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
                           SizedBox(height: 6),
                            SizedBox(
                              width: 150,

                              child: Text(
                                textAlign:TextAlign.center,
                                "C??c th??ng tin cho c??c m?? l???i tr??n h??? th???ng ACL TOP 50 Family",
                                style: TextStyle(
                                  color: Color(0xff232320),
                                  fontSize: 14,

                                ),
                              ),
                            ),

                            ElevatedButton.icon(
                              icon: Icon(Icons.arrow_circle_right, size: 26),
                              label: Text('V??O', style: TextStyle(fontSize: 13),),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  fixedSize: const Size(130, 30),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                              onPressed: () {Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) =>
                                      DongmauMd(title: "Chuy???n v??o EAP chi ti???t")),);},
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
                              MyHomePage(title: "Chuy???n v??o EAP chi ti???t")),);},

                            child: Column(

                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(textAlign:TextAlign.justify,
                                "EAP HUY???T H???C",
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
                                  "C??c th??ng tin m?? t??? v?? h?????ng x??? l?? cho c??c c??? b??o tr??n h??? th???ng DxH c???a Beckman Coulter",
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
 */
