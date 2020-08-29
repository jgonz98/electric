import 'package:electric/models/announcementArticle.dart';

class AnnouncementArticleViewModel {
  AnnouncementArticle _announcementArticle;
  AnnouncementArticleViewModel({AnnouncementArticle article})
      : _announcementArticle = article;
  String get type {
    return _announcementArticle.type;
  }

  String get header {
    return _announcementArticle.header;
  }

  String get body {
    return _announcementArticle.body;
  }
}
