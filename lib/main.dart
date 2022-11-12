import 'package:flutter/material.dart';
import 'dart:async';
import 'style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'modau.dart';
import "product.dart";
import "package:flutter_speed_dial/flutter_speed_dial.dart";

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EAP-DMHH',
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>

            ManhinhEAP())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/sotay.jpg'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  static const String routeName = '/material/search';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final items = Product.getProducts();
  final controller = TextEditingController();
  List<Product> products = Product.getProducts();

  void searchProduct(String query) {
    final suggestions = Product.getProducts().where((product) {
      final productName = product.name.toLowerCase();
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

         title:Container( margin: EdgeInsets.fromLTRB(15,15,0,0),child: Text("DANH SÁCH CỜ BÁO",style: TextStyle( fontSize: 18, color: Colors.white, ),),),
        //fontWeight: FontWeight.w700

          actions: [Container( margin: EdgeInsets.fromLTRB(30,20,30,10),width: 60,height: 60, child: SvgPicture.asset('assets/images/mitalab4.svg', color: Colors.white),

        ),]

      ),
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
                  leading: Image.asset("assets/images/cobao/" + product.image,
                    fit: BoxFit.contain,
                    width: 60,
                    height: 70,
                  ),
                  title: Text(product.name, style: TextStyle(color: Colors.black, fontSize:18, ), textAlign: TextAlign.left),
                  onTap: () =>
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductPage(item: items[index])
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

class ProductPage extends StatefulWidget {
  ProductPage({Key? key, required this.item}) : super(key: key);
  final Product item;

  @override
  ProductPageState createState() => ProductPageState(item);
}

class ProductPageState extends State<ProductPage> {
  Product item;
  ProductPageState(this.item);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(elevation: 6,
        title: Text(this.item.name, style: TextStyle( fontSize: 26,color: Colors.white,),),
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
                    "Ý NGHĨA",
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
                      this.item.description,
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "GIẢI PHÁP",
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
                  SizedBox(
                    width: double.infinity,
                    child: Text(textAlign:TextAlign.justify,
                      this.item.thamkhao,
                      style: TextStyle(
                        color: Color(0xffc7293b),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Image.asset("assets/images/cobao/" + this.item.image,

                    fit: BoxFit.cover,),

                ],
              ),
            ),




                          ],
                        )

                        );


  }
}
class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 1 ? Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 2 ?
                Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 3 ?
                Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key,required this.item}) : super(key: key);
  final Product item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset("assets/images/cobao/" + this.item.image),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Text(this.item.name, style: TextStyle(fontWeight: FontWeight.bold)), Text(this.item.description),


                          ],
                        )
                    )
                )
              ]
          ),
        )
    );
  }
}
/*
class SearchPage extends SearchDelegate {
  List<Product> product = Product.getProducts();

  get index => null;


  @override
  Widget? buildLeading(BuildContext context) =>
      IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) =>
      [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];


  //Widget buildResults(BuildContext context) => ProductPage(item: items[index]);
      /*Center(
        child: Text(
            query,
            style: const TextStyle(fontSize: 64, fontWeight: FontWeight.w500,)
        ),
      );*/
  List<String> getResults(String query) {
    // apply getting results logic here
    return [];
  }
  @override
  final items = Product.getProducts();

  Widget buildResults(BuildContext context) {
    final results = getResults(query);

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          // assuming `DetailsPage` exists
          Navigator.push(context, ProductPage(item:items[index].results));
        },
        title: Text(results[index]),
      ),
      itemCount: results.length,
    );
  }
  @override


  Widget buildSuggestions(BuildContext context) {
    List<Product> products = product.where((searchResult) {
      final result = searchResult.name.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();


    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          title: Text(product.name),
          onTap: () {
            query = product.name;
            showResults(context);
          },
        );
      },
    );
  }
}
*/

/*
class SearchPage extends StatefulWidget {


  @override
  _SearchPageState createState() => _SearchPageState();
}
class _SearchPageState extends State<SearchPage> {


  final items = Product.getProducts();
  final controller = TextEditingController();
  List<Product> products = Product.getProducts();
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Tìm kiếm'),
    ),
    body: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "Cờ Báo",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white, )
                ),
            ),
            onChanged: searchProduct,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index){
              final product = products[index];

              return ListTile(
                leading: Image.asset(
                  product.image,
                  fit:BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
                title: Text(product.name),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(item: items[index])
                  )
                )
              );
            },
          ),
        )
      ],
    )
  );
  void searchProduct(String query) {
    final suggestions = Product.getProducts().where((product) {
      final productName = product.name.toLowerCase();
      final input = query.toLowerCase();
      return productName.contains(input);
    }).toList();
    setState(() => products = suggestions);
  }

} */