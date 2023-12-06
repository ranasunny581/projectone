class NewsData {
  String? title;
  String? author;
  String? content;
  String? imageurl;
  String? date;

  //constructor
  NewsData(this.title, this.author, this.content, this.imageurl, this.date);

  //dummy data
 static List<NewsData> fetch_breakingnewdata(){
    List<NewsData> bnews=[
      NewsData("Title1", "Author1", "Content1", "data:image/jpeg;base64,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", "06-12-2023"),
      NewsData("Title2", "Author2", "Content2", "data:image/jpeg;base64,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", "06-12-2023"),
      NewsData("Title3", "Author3", "Content3", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC_6Tc4hfCLjQKhiv2FK25UPQMq3ERowch3w&usqp=CAU", "06-12-2023"),
      NewsData("Title4", "Author4", "Content4", "data:image/jpeg;base64,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", "06-12-2023"),
    ];
   return bnews;

 }
}
