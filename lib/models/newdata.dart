import 'dart:convert';

import 'package:http/http.dart' as http;

class NewsData {
  String? title;
  String? author;
  String? content;
  String? imageurl;
  String? date;
  String? urlink;

  //constructor
  NewsData(this.title, this.author, this.content, this.imageurl, this.date,
      this.urlink);

  //dummy data
  static Future<List<NewsData>> fetch_breakingnewdata() async {
    String KEY = "fc19382e67b440eb8dda977ecd7ab703";
    String URL = "https://newsapi.org/v2/top-headlines?country=in&apiKey=$KEY";

    List<NewsData> bnews = [];
    var response = await http.get(Uri.parse(URL));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List list = json['articles'];
      for (int i = 0; i < list.length; i++) {
        NewsData news = NewsData(
            list[i]["title"],
            list[i]["author"],
            list[i]["content"],
            list[i]["urlToImage"],
            list[i]["publishedAt"],
            list[i]["url"]);
        bnews.add(news);
      }
    }

    return bnews;
  }
}
