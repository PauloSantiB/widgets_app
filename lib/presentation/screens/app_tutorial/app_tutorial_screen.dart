import 'package:flutter/material.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Occaecat ex excepteur officia in anim ad incididunt.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'captiDeserunt consequat ex nostrud dolor nostrud elit excepteur minim.on', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Excepteur officia sunt occaecat est laborum laboris esse nulla in id laborum in sit.', 'assets/images/3.png'),
];






class AppTutorialScreen extends StatelessWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title: slideData.title, 
           caption: slideData.caption, 
           imageUrl: slideData.imageUrl
          )
        ).toList()
      ),


    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption; 
  final String imageUrl;

  const _Slide({
  
    required this.title, 
    required this.caption, 
    required this.imageUrl
    });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}