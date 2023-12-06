import 'package:flutter/material.dart';
import 'package:projectone/models/newdata.dart';

class NewsDetail extends StatelessWidget {
  final NewsData data;
  NewsDetail({required this.data,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("News Detail Page :${data.title}"),));
  }
}
