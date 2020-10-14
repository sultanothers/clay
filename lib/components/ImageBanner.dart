import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageBanner extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<ImageBanner> {

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        mainAxisSpacing: 1,
        crossAxisCount: 1,
        childAspectRatio: 2.2,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: CarouselSlider(
              items: [
                Image.asset(
                  'assets/images/banner.jpg', fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/banner.jpg', fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/banner.jpg', fit: BoxFit.fill,
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                autoPlayCurve: Curves.easeInOutCubic,
                pauseAutoPlayOnTouch: true,
                disableCenter: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index  ;
                    print('$_current');
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
