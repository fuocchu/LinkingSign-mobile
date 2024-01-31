import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vsa_mobile/const/color.dart';
import 'package:vsa_mobile/const/const_dimension.dart';
import 'package:vsa_mobile/model/video_model.dart';
import 'package:vsa_mobile/screens/youtube_player_srceen.dart';
import 'dart:convert';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LearningScreen extends StatelessWidget {
  final double screen_width;
  final double screen_height;
  final String word;
  const LearningScreen(
      {super.key,
      required this.screen_width,
      required this.screen_height,
      required this.word});
  // Future<List<WordVideoModel>> readjsonData() async {
  //   final jsonData = await rootBundle.loadString("jsonFile/videolist.json");
  //   final list = json.decode(jsonData) as List<dynamic>;
  //   return list.map((e) => WordVideoModel.fromJson(e)).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$word"),
        surfaceTintColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: screen_width,
              height: screen_height < horizontalHeight
                  ? screen_height * 0.5
                  : screen_height * 0.3,
              color: Colors.amber,
              child: YoutubeScreen(),
            ),
            Visibility(
              visible: screen_height < horizontalHeight ? false : true,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(word,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            Visibility(
              visible: screen_height < horizontalHeight ? false : true,
              child: Text("Hình minh họa bên dưới",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontStyle: FontStyle.italic)),
            ),
            Expanded(
              child: Visibility(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              width: screen_width * 0.5,
                              height: screen_height * 0.3,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(40),
                                image: const DecorationImage(
                                    image: AssetImage('assets/image_test.jpg'),
                                    fit: BoxFit.contain),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: screen_width * 0.5,
                                height: screen_height * 0.3,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/image_test.jpg'),
                                      fit: BoxFit.contain),
                                )),
                          ],
                        ),
                      )),
                  visible: screen_height < horizontalHeight ? false : true),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorClass.darkMainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                child: const Text(
                  "Luyện tập",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}