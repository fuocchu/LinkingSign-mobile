import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'dart:math';

import 'package:get/state_manager.dart';
import 'package:vsa_mobile/app/data/data.dart';
import 'package:vsa_mobile/app/data/models/word.dart';

class PracticeController extends GetxController {
  var review = Word(
          word: "Chào",
          video1url: "assets/videos/action/chao.mp4",
          image1url: "assets/topics/action/chao_1.jpg",
          image2url: "assets/topics/action/chao_2.jpg",
          topicName: "action",
          isLearned: false)
      .obs;
  @override
  void onInit() {
    //fetchReviewWord();
    print("init practice controller");
    super.onInit();
  }

  final _random = Random();
  int next(int min, int max) => min + _random.nextInt(max - min);
  Word wordReview(int number) {
    return word_data[next(2, 15)];
  }

  Future<void> fetchReviewWord() async {
    await Future.delayed(const Duration(seconds: 2));

    review.value = wordReview(next(2, 20));
  }
}