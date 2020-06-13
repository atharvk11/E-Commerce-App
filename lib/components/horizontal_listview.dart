import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category('images/cats/tshirt.png', 'tshirt'),
          Category('images/cats/dress.png', 'dress'),
          Category('images/cats/formal.png', 'formal'),
          Category('images/cats/informal.png', 'informal'),
          Category('images/cats/shoe.png', 'shoe'),
          Category('images/cats/jeans.png', 'jeans'),
          Category('images/cats/accessories.png', 'accessories'),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category(this.image_location, this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 70,
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 8),
              alignment: Alignment.topCenter,
              child: Text(image_caption,style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
