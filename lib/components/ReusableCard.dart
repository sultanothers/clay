import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:clay/util/hex_color.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.onPress, @required this.imageProduct, @required this.titleProduct, @required this.descriptionProduct, @required this.priceProduct});
  final Function onPress;
  final Widget imageProduct;
  final String titleProduct;
  final String descriptionProduct;
  final String priceProduct;

  double height = 100;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      color: HexColor('E6F0DE'),
      shadowColor: Colors.grey,
      elevation: 10.0,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        onTap: onPress,
        highlightColor: Colors.grey,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0)),
                    child: imageProduct,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 8.0),
//                          margin: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '$titleProduct',
                          style: TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          '$descriptionProduct',
                          style: TextStyle(
                              fontSize: 10, color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                color: HexColor('bdc1b6'),
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '$priceProduct',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
              right: 0.0,
              bottom: height * 0.48,
            ),
          ],
        ),
      ),
    );
  }
}
