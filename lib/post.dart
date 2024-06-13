class Post {
  String name;
  String imagePath;
  String time;
  String desc;
  int likes;
  int comments;

  Post(
      {required this.name,
      required this.imagePath,
      required this.time,
      required this.desc,
      this.likes = 0,
      this.comments = 0});

  String setLinks() {
    return "$likes j'aime";
  }

  String setTimes() {
    return "il y a $time";
  }

  String setComment() {
    if (comments > 1) {
      return "$comments j'aimes";
    } else {
      return "$comments j'aime";
    }
  }
}
