import 'package:flutter/material.dart';
import 'package:petspeed/components/main_menu.dart';
import 'package:petspeed/components/pet_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/petspeed-logo.png',
                height: 50,
              ),
            ),
            Expanded(
                child: Center(
              child: PetCard(
                title: 'Thor',
                description: 'Cão, 8 anos',
              ),
            )),
            MainMenu(),
          ],
        ),
      ),
    );
  }
}
