// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/controller/saved_controller.dart';
import 'package:movieapp/shared/themes.dart';


class SavedMovieScreens extends StatelessWidget {
    var _savedController = Get.find<ControllerSaved>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: SavedAppBar(),
        body: Container(
          width: gWidth,
          height: gHeight,
          margin: EdgeInsets.all(10),
          child: GetBuilder<ControllerSaved>(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Get.find<ControllerSaved>().listOfSaved.isEmpty
                    ? FadeInLeft(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Nothing to show🙄`",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Container(
                            width: gWidth,
                            height: gHeight / 1.311,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: _savedController.listOfSaved.length,
                                itemBuilder: (ctx, index) {
                                  return Container(
                                    margin: EdgeInsets.all(5),
                                    width: double.infinity,
                                    height: gHeight / 5,
                                    child: Row(
                                      children: [
                                        FadeInDown(
                                          delay: Duration(milliseconds: 500),
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      _savedController
                                                          .listOfSaved[index]
                                                          .img,
                                                    ),
                                                    fit: BoxFit.cover)),
                                            width: gWidth / 3,
                                            height: double.infinity,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            FadeInLeft(
                                              delay: Duration(milliseconds: 600),
                                              from: 80,
                                              child: Container(
                                                width: 200,
                                                height: 25,
                                                child: Text(
                                                  _savedController
                                                      .listOfSaved[index]
                                                      .title,
                                                  style: TextStyle(
                                                      fontSize: 20, fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            FadeInLeft(
                                              delay: Duration(milliseconds: 700),
                                              from: 80,
                                              child: Container(
                                                width: 150,
                                                height: 20,
                                                child: Text(
                                                  _savedController
                                                      .listOfSaved[index]
                                                      .subTitle,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.grey.shade600),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 35,
                                            ),
                                            FadeInLeft(
                                              delay: Duration(milliseconds: 800),
                                              from: 80,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 55,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      color: Colors.yellow,
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "IMBd",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    _savedController
                                                        .listOfSaved[index]
                                                        .imbd
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.grey.shade600,
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        Get.defaultDialog(
                                                            
                                                            barrierDismissible: false,
                                                            title: "Warning!",
                                                            content: Text(
                                                              "Do you really wanna remove this movie from this list?",
                                                              textAlign: TextAlign.center,
                                                            ),
                                                            confirmTextColor: Colors.white,
                                                            onCancel: () {},
                                                            onConfirm: () {
                                                              _savedController
                                                                  .removeSingleItem(index);
                                                              Get.back();
                                                            });
                                                      },
                                                      icon: Icon(
                                                        Icons.remove_circle_outline,
                                                        color: Colors.red,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }
                              ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            width: gWidth,
                            height: gHeight / 12,
                            child: FadeInUp(
                              delay: Duration(milliseconds: 1000),
                              child: MaterialButton(
                                shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 0,
                                onPressed: () {},
                                color: Colors.indigoAccent,
                                child: FittedBox(
                                  child: Text(
                                  "Buy Now",
                                  style: TextStyle(color: Colors.white, fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
