// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movieapp/shared/themes.dart';
import 'package:movieapp/widget/home/card_movie_item.dart';
import 'package:movieapp/widget/home/fade.dart';
import 'package:movieapp/widget/home/main_image.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Container(
          height: gHeight,
          child: Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              MainImage(),
              FadeWidget(),
              CardMovie()
            ],
          ),
        )
      ),
    );
  }
}
