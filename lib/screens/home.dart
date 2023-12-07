import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectone/components/NewsTile.dart';
import 'package:projectone/models/newdata.dart';

import '../components/BreakingNewsCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<NewsData> news=[];

  @override
  void initState() {

    super.initState();
    getnews();
  }

  getnews() async{
    news=await NewsData.fetch_breakingnewdata();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Breaking News",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            news.length==0?Center(child: CircularProgressIndicator()):CarouselSlider.builder(
                itemCount: news.length,
                itemBuilder: (context, index, pageview) {
                  return BreakingNewsCard(data: news[index],);
                },
                options: CarouselOptions(
                  aspectRatio: 16/9,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  enlargeCenterPage: true
                )),
            SizedBox(height: 20,),
            Text(
              "Recent News",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            news.length==0?Center(child: CircularProgressIndicator()):Column(
              children:     //data
              news.map((item) => NewsTile(data: item,)).toList()
            ,)


          ],
        ),
      ),
    );
  }
}
