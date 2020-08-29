class AnnouncementArticle {
  final String type;
  final String header;
  final String body;

  AnnouncementArticle(this.type, this.header, this.body);

  factory AnnouncementArticle.fromJSON(Map<String, dynamic> json) {
    return AnnouncementArticle(json['type'], json['header'], json['body']);
  }
}
