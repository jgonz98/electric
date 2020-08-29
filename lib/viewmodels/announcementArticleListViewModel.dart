import 'package:electric/models/announcementArticle.dart';
import 'package:electric/services/webService.dart';
import 'package:electric/viewmodels/announcementArticleViewModel.dart';
import 'package:flutter/cupertino.dart';

class AnnouncementArticleListViewModel extends ChangeNotifier {
  List<AnnouncementArticleViewModel> articles =
      List<AnnouncementArticleViewModel>();

  AnnouncementArticleListViewModel() {
    _populateAnnouncements();
  }

  Future<void> _populateAnnouncements() async {
    List<AnnouncementArticle> announcementArticles =
        await WebService().fetchAnnouncement();
    this.articles = announcementArticles
        .map((article) => AnnouncementArticleViewModel(article: article))
        .toList();
    notifyListeners();
  }
}
