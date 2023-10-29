

class Comment {


  final String title;
  final int commentId;

  Comment({required this.title, required this.commentId});


  factory Comment.fromJson(Map<String, dynamic> json){
    return Comment(title: json["text"], commentId: json["id"]);
  }
  


}
