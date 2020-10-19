import 'package:flutter/material.dart';
import 'package:claybotanicals/components/ReusableCard.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var title = 'Dark Angels';
  var description = 'Tea Tree & Brightening Oil is one of the best '
      'pada dasarnya akan';
  var price = 'Rp190.000';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverPadding(
        padding: const EdgeInsets.all(20),
        sliver: SliverGrid.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: <Widget>[
            ReusableCard(
                onPress: () {
                  print('tapped');
                },
                imageProduct: Image.asset(
                  'assets/images/clay1.png',
                  fit: BoxFit.fill,
                ),
                titleProduct: '$title',
                descriptionProduct: '$description',
                priceProduct: '$price'),
          ],
        ),
      ),
    );
  }
}

