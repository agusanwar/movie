// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/controller/card_controller.dart';
import 'package:movieapp/shared/themes.dart';

class RepetisiusInfo extends StatelessWidget {
  var _cardController = Get.find<ControllerCard>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.red,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Obx(() {
          return Text(
            _cardController
                .listOfMovies[_cardController.currentIndex.value].iMBd,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
          );
        })
      ],
    );
  }
}

//Repetitious Time Text
class RepetitiousTime extends StatelessWidget {
  var _cardController = Get.find<ControllerCard>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time_filled,
          color: iconColor,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Obx(() {
          return Text(
            _cardController
                .listOfMovies[_cardController.currentIndex.value].time,
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 34, 19, 19),
            ),
          );
        })
      ],
    );
  }
}

//Repetitious Watch Text
class RepetitiousWatch extends StatelessWidget {
  const RepetitiousWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.play_circle_filled,
          color: kRedColor,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Watch",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
