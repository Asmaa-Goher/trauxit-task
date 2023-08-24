class PostModel {
  late String title;
  late String body;

  PostModel.fromJson(Map<String, dynamic> data) {
    title = data["title"]!;
    body = data["body"]!;
  }
}
