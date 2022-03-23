// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/controller/card_controller.dart';
import 'package:get/get.dart';
import 'package:movieapp/screens/detail.dart';
import 'package:movieapp/shared/themes.dart';
import 'package:movieapp/widget/home/refetition_info.dart';

class CardMovie extends StatelessWidget {
  CarouselController _carouselController = CarouselController();
  var _cardController = Get.find<ControllerCard>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      height: gHeight * 0.7,
      width: gWidth,
      child: GestureDetector(
        onTap: () {
          Get.to(() => DetailScreens());
        },
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              height: gHeight / 1.6,
              aspectRatio: 16 / 9,
              viewportFraction: 0.70,
              enlargeCenterPage: true,
              onPageChanged: (index, _) {
                _cardController.changeIndex(index);
              }),
          items: _cardController.listOfMovies.map(
            (movie) {
              return Builder(
                builder: (ctx) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            height: 350,
                            width: gWidth,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Image.asset(
                              movie.imageAd,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            movie.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            movie.genre,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RepetisiusInfo(),
                                RepetitiousTime(),
                                RepetitiousWatch(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
