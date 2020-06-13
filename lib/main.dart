import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//class imports
import 'package:ecommerce/components/horizontal_listview.dart';
import 'package:ecommerce/components/Products.dart';
import 'package:ecommerce/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget image_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/m1.jpeg'),
        AssetImage('images/c1.jpg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
      dotSize: 4.0,
      // dotColor: Colors.black,
      // autoplayDuration: Duration(milliseconds: 4000),
      indicatorBgPadding: 5,
      dotColor: Colors.red,
      dotBgColor:Colors.transparent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.amber,
        iconTheme: IconThemeData(color: Colors.black),
        // leading: Icon(Icons.menu,color: Colors.black,),
        title: Text(
          "Shop App",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>Cart() )
              );
            //  Navigator.pop(context);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Atharv Kulkarni",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text("atharvsk11@gmail.com̥", style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(color: Colors.amber),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>Cart() )
              );},
              child: ListTile(title: Text("Cart"), leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            )
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        //image carousel
        image_carousel,
        //padding
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Categories", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),),
        ),
        //horizontal list view
        HorizontalList(),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Recent", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),),
        ),
        //grid view
        Container(height: 320, child: Products(),)
      ]),
    );
  }
}
