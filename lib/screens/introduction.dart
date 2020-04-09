import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:petspeed/components/page_slide.dart';
import 'package:petspeed/models/slide.dart';

import 'home_screen.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  final PageController _pageController = PageController(initialPage: 0);
  double _currentPage = 0;
  String _nextButton = "PRÓXIMO";

  _setCurrentPage(int index) {
    setState(() {
      this._currentPage = index.toDouble();
      _nextButton = (index == (slideList.length - 1)) ? "CONTINUAR" : "PRÓXIMO";
    });
  }

  _nextOrContinue() {
    if (_currentPage < (slideList.length - 1)) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo_black.png',
                    width: 120,
                  ),
                ],
              ),
            ),
            Expanded(
                child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: slideList.length,
              itemBuilder: (context, index) => PageSlider(index: index),
              onPageChanged: _setCurrentPage,
            )),
            Container(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: DotsIndicator(
                      dotsCount: slideList.length,
                      position: _currentPage,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeColor: Color.fromRGBO(0, 184, 148, 1),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => _nextOrContinue(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(_nextButton),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
