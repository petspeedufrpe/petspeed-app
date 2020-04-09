import 'package:flutter/material.dart';

class Slide {
  final String title;
  final String description;
  final String imageUrl;

  Slide({
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  });
}

final slideList = [
  Slide(
    title: 'Bem vinda(o) ao PetSpeed!',
    description:
        'A plataforma perfeita para quem ama animais. PetSpeed reúne tudo que você precisa em um app simples e fácil de usar.',
    imageUrl: 'assets/images/intro/intro_1.png',
  ),
  Slide(
      title: 'Procurando Vet?',
      description:
          'Encontre os profissionais mais competentes para cuidar do seu bichinho.',
      imageUrl: 'assets/images/intro/intro_2.png'),
  Slide(
    title: 'Vamos começar?',
    description:
        'Cadastre seus pets e comece a utilizar todas as funcionalidades que o PetSpeed te oferece!',
    imageUrl: 'assets/images/intro/intro_3.png',
  )
];
