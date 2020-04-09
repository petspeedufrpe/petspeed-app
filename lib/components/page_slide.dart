import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:petspeed/models/slide.dart';

class PageSlider extends StatelessWidget {
  final int index;

  PageSlider({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            slideList[index].imageUrl,
            width: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: AutoSizeText(
              slideList[index].title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              maxLines: 1,
            ),
          ),
          Text(
            slideList[index].description,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
