// ignore_for_file: sized_box_for_whitespace, prefer_final_fields, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, unnecessary_string_interpolations

import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/controller/card_controller.dart';
import 'package:movieapp/controller/reservation_controller.dart';
import 'package:movieapp/shared/themes.dart';
import 'package:movieapp/widget/detail/appBar.dart';

class DetailScreens extends StatelessWidget {
var _cardController = Get.find<ControllerCard>();
var _reservationController = Get.find<ControllerReservation>();
  CarouselController _carouselController = CarouselController();

  final List<dynamic> _calendar = [
    {'day': 'Monday', 'num': '1'},
    {'day': 'Tuesday', 'num': '2'},
    {'day': 'Wednesday', 'num': '3'},
    {'day': 'Thursday', 'num': '4'},
    {'day': 'Friday', 'num': '5'},
    {'day': 'Saturday', 'num': '6'},
    {'day': 'Sunday', 'num': '7'},
    {'day': 'Tuesday ', 'num': '8'},
    {'day': 'Wednesday', 'num': '9'},
    {'day': 'Thursday ', 'num': '10'},
    {'day': 'Friday', 'num': '11'},
    {'day': 'Saturday', 'num': '12'},
    {'day': 'Sunday', 'num': '13'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: Container(
        // Image Detail
        height: gHeight,
        width: gWidth,
        child: Stack(
          children: [
            Container(
              width: gWidth,
              height: gHeight / 1.9,
              child: Hero(
                tag: _cardController.currentIndex.value, 
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        _cardController.listOfMovies[_cardController.currentIndex.value].imageAd,
                      ),
                      fit: BoxFit.cover,
                       colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
               top: 140,
              child: FadeInUp(
                child: Container(
                  width: gWidth,
                  height: 400,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 260,
              left: 10,
              child: FadeInDown(
        
                delay: Duration(milliseconds: 500),
                child: Container(
                  width: gWidth / 1.2,
                  height: gHeight / 9,
                  child: Text(
                    _cardController
                        .listOfMovies[_cardController.currentIndex.value]
                        .title,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 35, color: cardColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 290,
              left: 10,
              child: FadeInDown(
                delay: Duration(milliseconds: 500),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: kRedColor
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          _cardController
                              .listOfMovies[
                                  _cardController.currentIndex.value]
                              .iMBd,
                          style: TextStyle(
                            fontSize: 18,
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      height: 30,
                      decoration: BoxDecoration(
                          color: kBlueColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            _cardController
                                .listOfMovies[
                                    _cardController.currentIndex.value]
                                .time,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Positioned(
              top: 340,
              left: 20,
              right: 10,
              child: FadeInDown(
                delay: Duration(milliseconds: 700),
                child: Container(
                  width: gWidth,
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        child: FittedBox(
                          child: RichText(
                            text: TextSpan(
                              text: 'Director',
                              style: TextStyle(
                                fontSize: 16,
                                color: kBlueColor,
                                fontWeight: semiBold
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' : ',
                                ),
                                TextSpan(
                                    text:
                                        "${_cardController.listOfMovies[_cardController.currentIndex.value].director}",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(" | "),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 180,
                        child: FittedBox(
                          child: RichText(
                            text: TextSpan(
                              text: 'Writer',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blueAccent,
                                fontWeight: bold
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' : ',
                                ),
                                TextSpan(
                                    text:
                                        "${_cardController.listOfMovies[_cardController.currentIndex.value].writer}",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 390,
              left: 20,
              child: Center(
                child: FadeInDown(
                  delay: Duration(milliseconds: 900),
                  child: Container(
                    width: gWidth / 1.1,
                    height: gHeight / 6,
                    child: SingleChildScrollView(
                        child: Text(
                      _cardController
                          .listOfMovies[_cardController.currentIndex.value]
                          .description,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 560,
              left: 15,
              right: 15,
              child: Container(
                width: gWidth,
                child: FadeInDown(
                  delay: Duration(milliseconds: 1000),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Select ',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Date',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 120,
                        height: 35,
                        child: GetBuilder<ControllerReservation>(builder: (_) {
                          return _reservationController.selectedIndex == 0
                              ? Container()
                              : FadeIn(
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    elevation: 0,
                                    onPressed: () {},
                                    color: Colors.indigoAccent,
                                    child: FittedBox(
                                        child: Text(
                                      "Reservation",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              child: FadeInDown(
                delay: Duration(milliseconds: 1200),
                child: Container(
                  width: gWidth,
                  height: gHeight / 6,
                  child: CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                        height: 110,
                        viewportFraction: 0.3,
                        enlargeCenterPage: true,
                        onPageChanged: (index, _) {
                          _reservationController.changeingIndex(index);
                        }),
                    items: _calendar.map((cal) {
                      return GetBuilder<ControllerReservation>(builder: (ctx) {
                        return GestureDetector(
                          onTap: () {
                            _reservationController.isSelected(cal);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            width: 100,
                            decoration: BoxDecoration(
                                border:  _reservationController.selectedIndex == cal
                                    ? Border.all(
                                        color: Color.fromARGB(255, 204, 204, 204),
                                        width: 3)
                                    : null,
                                borderRadius: BorderRadius.circular(15),
                                color:  _reservationController.selectedIndex == cal
                                    ? Colors.indigoAccent
                                    : Color.fromARGB(255, 226, 226, 226)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      cal['day'],
                                      style: TextStyle(
                                        color:  _reservationController.selectedIndex == cal
                                            ? Colors.white
                                            : Color.fromARGB(255, 56, 56, 56),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    cal['num'],
                                    style: TextStyle(
                                      color:  _reservationController.selectedIndex == cal
                                          ? Colors.white
                                          : Color.fromARGB(255, 56, 56, 56),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "\$25",
                                    style: TextStyle(
                                      color: _reservationController.selectedIndex == cal
                                          ? Colors.white
                                          : Color.fromARGB(255, 56, 56, 56),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
