import 'package:flutter/material.dart';
import 'package:projectone/models/newdata.dart';
import 'package:webview_universal/webview_controller/webview_controller.dart';
import 'package:webview_universal/widget/widget.dart';


class NewsDetail extends StatefulWidget {
  final NewsData data;
  NewsDetail({required this.data, super.key});

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {

  WebViewController controller=WebViewController();

  @override
  void initState() {

    super.initState();
    task();
  }

  Future<void> task() async {
    await controller.init(
      context: context,
      uri: Uri.parse(widget.data.urlink.toString()), setState: (void Function() fn) {  },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          leading: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
      child: WebView(
        controller: controller,
      )
    ));
  }
}
