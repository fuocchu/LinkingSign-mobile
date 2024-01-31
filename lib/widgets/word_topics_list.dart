import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vsa_mobile/controller/topic_list_controller.dart';
import 'package:vsa_mobile/database/wordtopic_model.dart';
import 'package:vsa_mobile/widgets/word_topic_card.dart';

class WordTopicList extends StatefulWidget {
  const WordTopicList({super.key});

  @override
  State<WordTopicList> createState() => _WordTopicListState();
}

class _WordTopicListState extends State<WordTopicList> {
  final topicsController = Get.put(TopicsController());
  @override
  Widget build(BuildContext context) {
    final screen_width = MediaQuery.of(context).size.width;
    final screen_height = MediaQuery.of(context).size.height;
    return GetX<TopicsController>(
      builder: (controller) {
        return Container(
          padding:
              const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
          child: ListView.builder(
            itemCount: controller.topics.length,
            itemBuilder: (context, index) {
              return WordTopicCard(
                url_path: controller.topics[index].url_path,
                title: controller.topics[index].title,
                current_completed: controller.topics[index].current_completed,
                screen_width: screen_width,
                screen_height: screen_height,
                total_lessons: controller.topics[index].total_lessons,
              );
            },
          ),
        );
      },
    );
  }
}
