class Post {
  String text;
  String date;
  int likes;
  int comments;
  String postUrl;

  Post({
    required this.text,
    required this.date,
    required this.likes,
    required this.comments,
    required this.postUrl
  });

  Post.namedParams({this.text = "text", this.date = "date", this.likes = 0, this.comments = 0, this.postUrl = "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg"});
}