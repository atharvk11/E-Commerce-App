import 'package:ecommerce/components/cart_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(left: 10),),
            Text("Total :    ",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.blue),
            ),
            Text(
              "\$" + 300.toString(),
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
            ),
            Padding(padding: const EdgeInsets.only(right: 58),),
            Container(
              width: 180,
              height: 47,
              child: MaterialButton(
                onPressed: () {},
                child: Text("Check Out ", style: TextStyle(color: Colors.white,fontSize: 20,
                  ),),
                color: Colors.red,
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 20),),
          ],
        ),
      ),
      body: CartProducts(),
    );
  }
}
