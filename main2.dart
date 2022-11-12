import 'package:flutter/material.dart';
import 'dart:async';
import 'style.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(MyApp());

class Product {
  final String name;
  final String description;
  final String giaiphap;
  final String image;
  Product(this.name, this.description, this.giaiphap, this.image);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(
        Product(
            "PLATELET CLUMP",
            "Phát hiện cụm tiểu cầu trong máu.",
            ' B1: Kiểm tra tình trạng mẫu có các cục máu đông hay không \n - B2: Soi lam kiểm tra lại kết quả. \n - B3: Nếu cụm tiểu cầu vẫn xuất hiện thì xử lý theo SOP của phòng xét nghiệm. (Theo  guideline của CAP) \n  - B1: Lấy mẫu lại bằng ống Citrate. \n - B2: Sau đó trả kết quả tiểu cầu dựa theo kết quả khi chạy bằng ống citrate (nhân với hệ số chuyển đổi 1.1 ). \n - B3: Các thông số còn lại vẫn trả theo kết quả khi chạy trên ống EDTA.\n(Theo các guideline số 37, 38, 39 của ISLH)',
            "plate_clump.jpg"
        )
    );
    items.add(
        Product(
            "MO BLAST",
            "Dữ liệu ghi nhận kết quả có sự hiện diện của tế bào Mono chưa trưởng thành.",
            'Đối với mẫu xuất hiện lần đầu: Kéo lam kiểm tra lại kết quả.\nĐối với mẫu trước đó kết quả đã được xác nhận; Nếu không có sự gia tăng bạch cầu trong khoảng 3-7 ngày: Thực hiện theo SOP của phòng xét nghiệm.\nĐối với mẫu trước đó kết quả đã được xác nhận; Nếu có sự gia tăng bạch cầu: Phải soi lam kiểm tra lại kết quả.\n(Theo các guideline số 37, 38, 39 của ISLH)',
            "mo_blast.jpg"
        )
    );
    items.add(
        Product(
            "GIANT PLATELET",
            "Kết quả ghi nhận có sự hiện diện của tiểu cầu khổng lồ.",
            'Soi lam kiểm tra lại kết quả.\n(Theo các guideline số 37, 38, 39 của ISLH)',
            "giant_plalete.jpg"
        )
    );
    items.add(
        Product(
            "RBC FRAGMENTS /MICOCYTES",
            "Mẫu có thể chứa các mảnh vỡ hồng cầu hoặc các tế bào hồng cầu rất nhỏ.",
            'Kéo lam kiểm tra lại kết quả.\n(Theo các guideline số 37, 38, 39 của ISLH)',
            "rbc_fra.jpg"
        )
    );
    items.add(
        Product(
            "LYMPHO BLAST",
            "Dữ liệu ghi nhận kết quả có sự hiện diện của tế bào Lympho chưa trưởng thành.",
            'Đối với mẫu xuất hiện lần đầu: Kéo lam kiểm tra lại kết quả.\nĐối với mẫu trước đó kết quả đã được xác nhận; Nếu không có sự gia tăng bạch cầu trong khoảng 3-7 ngày: Thực hiện theo SOP của phòng xét nghiệm.\nĐối với mẫu trước đó kết quả đã được xác nhận; Nếu có sự gia tăng bạch cầu: Phải soi lam kiểm tra lại kết quả.\n(Theo các guideline số 37, 38, 39 của ISLH)',
            "lym_pho.jpg"
        )
    );

    return items;
  }
}
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
        accentColor: kPrimaryColor,
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
            builder: (BuildContext context) => MyHomePage(title: "Home"))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      appBar: AppBar(title: const Text("DANH SÁCH CỜ BÁO",style: TextStyle(
        fontSize: 30,fontFamily: "San Francisco",
        color: Colors.red,
        fontWeight: FontWeight.w700),
      ),
        centerTitle: true, //Color(0xff111bfc)
      ),
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
            Padding(
              padding:EdgeInsets.fromLTRB(20,10,10,10),),

            Material(elevation: 0,shadowColor: Colors.white,borderRadius:BorderRadius.circular(10) ,

              child:

              TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                hintText: "Tìm kiếm",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: const BorderSide(color: Colors.blue, width: 4.0),

                ),
              ),
              onChanged: searchProduct,
            ),
            ),


          Expanded(
          child: Padding(
          padding: const EdgeInsets.fromLTRB(0,10,0,0),
          child:
            ListView.builder(
              padding: const EdgeInsets.all(1),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return Card(child:ListTile(
                  leading: Image.asset("assets/images/" + product.image,
                    fit: BoxFit.contain,
                    width: 60,
                    height: 60,
                  ),
                  title: Text(product.name, style: TextStyle(color: Colors.blue.shade500, fontSize:17, fontFamily: "San Francisco"), textAlign: TextAlign.left),
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

          ),
          )        ],

      ),
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

    return Scaffold(backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(this.item.name,style: TextStyle(color: Color(0xffffffff), fontSize: 26,fontFamily: "San Francisco",),),
          backgroundColor:Colors.blue.shade600),
      body:

      ListView(
          physics: ClampingScrollPhysics(),
          children:[
            Container(
              margin: const EdgeInsets.all(3.0),

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(9),
                border: Border.all(width: 1,color: Colors.white,),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x338a959e),
                    blurRadius: 0,

                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "MÔ TẢ",
                    style: TextStyle(
                      color: Color(0xff0633f8),  //0xff232323
                      fontSize: 20,
                      fontFamily: "San Francisco",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    child: Text(textAlign:TextAlign.justify,
                      this.item.description,
                      style: TextStyle(
                        color: Color(0xff232323),
                        fontSize: 18,fontFamily: "San Francisco",

                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(3.0),
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
                  Image.asset("assets/images/" + this.item.image,width: double.infinity,
                    height: 500,
                    fit: BoxFit.fitHeight,),

                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(3.0),
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
                      fontFamily: "San Francisco",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    child: Text(textAlign:TextAlign.justify,
                      this.item.giaiphap,
                      style: TextStyle(
                        color: Color(0xff232323),
                        fontSize: 18, fontFamily: "San Francisco"
                      ),
                    ),
                  ),
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
                Image.asset("assets/images/" + this.item.image),
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