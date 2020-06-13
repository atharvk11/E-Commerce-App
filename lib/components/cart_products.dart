import 'package:flutter/material.dart';
import 'package:ecommerce/components/cart_products.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_in_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size": "7",
      "color": "Red",
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_in_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            products_in_cart[index]['name'],
            products_in_cart[index]['picture'],
            products_in_cart[index]['price'],
            products_in_cart[index]['size'],
            products_in_cart[index]['color'],
            products_in_cart[index]['quantity'],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty);

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Row(
          children: <Widget>[
            Image.asset(cart_prod_picture,height: 86,width: 80,),
            Padding(padding: const EdgeInsets.only(right: 20),),
            Container(
              width: 250,
              height: 86,
              child: Column(
                children: <Widget>[
                  //========= NAME ==============
                  Row(
                    children: <Widget>[
                      Text(cart_prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),)
                    ],
                  ),
                  Padding(padding: const EdgeInsets.only(top: 10),),

                  //========= SIZE AND COLOR ==============
                  Row(
                    children: <Widget>[
                      //==========SIZE==========
                      Text("Size : ",style:TextStyle(fontSize: 15,),),
                      Text(cart_prod_size,style:TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),),

                      Padding(padding: const EdgeInsets.only(left: 30),),

                      Text("Color : ",style:TextStyle(fontSize: 15,),),
                      Text(cart_prod_color,style:TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),),

                    ],
                  ),

                  //========= PRICE ==============
                  Padding(padding: const EdgeInsets.only(top: 10),),
                  Row(
                    children: <Widget>[
                      Text("\$ "+cart_prod_price.toString(),style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.red),)
                    ],
                  ),

                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.arrow_drop_up),
                  ),

                 // Padding(padding: const EdgeInsets.only(top: 9),),
                  Text(cart_prod_qty.toString()),

                  IconButton(onPressed: (){},
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            )
          ],
        ),

    );
  }
}
