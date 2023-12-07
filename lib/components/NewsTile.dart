import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:projectone/models/newdata.dart';

import '../screens/NewsDetail.dart';

class NewsTile extends StatefulWidget {
  final NewsData data;
  const NewsTile({required this.data, super.key});

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> NewsDetail(data: widget.data,)));
      },
      child: Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(placeholder: (context,msg){
                  return CircularProgressIndicator();
                },
                  imageUrl: widget.data.imageurl.toString(),

                )
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
                flex: 4,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(widget.data.title.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),
                ),
                Text(widget.data.author.toString(),style: TextStyle(color: Colors.white),),
                Text(widget.data.date.toString(),style: TextStyle(color: Colors.white),),
              ],
            ))

          ],
        ),
      ),
    );
  }
}
