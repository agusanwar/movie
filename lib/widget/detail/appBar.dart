// ignore_for_file: prefer_final_fields, prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import 'package:movieapp/controller/animation_controller.dart';
import 'package:movieapp/controller/card_controller.dart';
import 'package:movieapp/controller/reservation_controller.dart';
import 'package:movieapp/controller/saved_controller.dart';
import 'package:movieapp/screens/saved.dart';


class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  //
  var _reservController = Get.find<ControllerReservation>();
  var _cardController = Get.find<ControllerCard>();
  var _animeController = Get.find<ControllerAnimation>();
  var _savedController = Get.find<ControllerSaved>();
  //
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: FadeInDown(
        delay: Duration(milliseconds: 300),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
                _animeController.runAnime();
                _reservController.setToZero();
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => SavedMovieScreens());
                },
                icon: Icon(Icons.shopping_cart_outlined)),
            IconButton(
              onPressed: () {
                _savedController.addItem(
                  img: _cardController
                      .listOfMovies[_cardController.currentIndex.value].imageAd,
                  title: _cardController
                      .listOfMovies[_cardController.currentIndex.value].title,
                  subTitle: _cardController
                      .listOfMovies[_cardController.currentIndex.value].genre,
                  imbd: _cardController
                      .listOfMovies[_cardController.currentIndex.value].iMBd,
                );
              },
              icon: Icon(Icons.bookmark_add_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
