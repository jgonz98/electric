import 'package:electric/models/announcementArticle.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class WebService {
  Future<List<AnnouncementArticle>> fetchAnnouncement() async {
    String url = "https://my-json-server.typicode.com/RLJIII/electric";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["article"];
      return list.map((article) => AnnouncementArticle.fromJSON(article));
    } else {
      throw Exception("response.statusCode =/= 200");
    }
  }
}
