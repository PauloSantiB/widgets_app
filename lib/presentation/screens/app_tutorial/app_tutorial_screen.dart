import 'package:flutter/material.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'caption', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'caption', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'caption', 'assets/images/3.png'),
];






class AppTutorialScreen extends StatelessWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          
        ],
      ),


    );
  }
}