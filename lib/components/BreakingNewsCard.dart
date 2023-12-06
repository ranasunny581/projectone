import 'package:flutter/material.dart';
import 'package:projectone/models/newdata.dart';
import 'package:projectone/screens/NewsDetail.dart';

class BreakingNewsCard extends StatefulWidget {
 final NewsData data;
  const BreakingNewsCard({required this.data,super.key});

  @override
  State<BreakingNewsCard> createState() => _BreakingNewsCardState();
}

class _BreakingNewsCardState extends State<BreakingNewsCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> NewsDetail(data: widget.data,)));
      },
      child: Container(
        width: double.infinity,
        // margin: EdgeInsets.all(2),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(widget.data.imageurl.toString()),
            fit: BoxFit.fill
          )
        ),
        child: Container(
          padding: EdgeInsets.only(left: 15,bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [Colors.transparent,Colors.pink.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.data.title.toString(),style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text(widget.data.author.toString(),style: TextStyle(color: Colors.white54,fontSize: 14,fontWeight: FontWeight.normal),)
            ],
          ),
        ),
      ),
    );
  }
}
