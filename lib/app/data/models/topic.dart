// class Topic {
//   String? Id;
//   String? name;
//   String? imageUrl;
//   int? numberOfLearnedLesson;
//   int? totalLesson;
//   String? state;

//   Topic(
//       {this.Id,
//       required this.name,
//       this.imageUrl,
//       this.numberOfLearnedLesson,
//       this.totalLesson,
//       this.state}) {
//     Id ??= DateTime.now().toString();
//     imageUrl ??= "";
//     numberOfLearnedLesson ??= 0;
//     totalLesson ??= 0;
//     state ??= "";
//   }
// }
class WordTopic {
  final String url_path;
  final String title;
  final double current_completed;
  final double total_lessons;
  final String state;

  WordTopic(
      {required this.url_path,
      required this.title,
      required this.current_completed,
      required this.total_lessons,
      required this.state});
}