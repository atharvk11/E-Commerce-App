import 'package:flutter/material.dart';
import 'package:ecommerce/components/horizontal_listview.dart';
import 'package:ecommerce/pages/product_details.dart';
class Products extends StatefulWidget {


  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Blazer",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_list[index]['name'],
            product_list[index]['picture'],
            product_list[index]['old_price'],
            product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      this.prod_name, this.prod_picture, this.prod_old_price, this.prod_price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("Hero 1"),
        child: Material(
          child: InkWell(
            onTap:()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=>new ProductDetails(
               prod_name,prod_price,prod_old_price,prod_picture)
              )),

            //grid
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,),),
                  title: Text("\$"+prod_price.toString(),style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.w800
                  ),),

                  subtitle: Text("\$"+prod_old_price.toString(),style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough
                  ),),
                ),
              ),
              child: Image.asset(prod_picture,fit: BoxFit.cover,),

            ),
          ),
        ),
      ),
    );
  }
}
