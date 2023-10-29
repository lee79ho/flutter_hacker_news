


import 'dart:js_interop';

import '../models/comment.dart';

class CommentViewModel {


  final Comment comment;

  CommentViewModel({required this.comment});


  String get title{
    return this.comment.title;
  }

  int get commetId{
    return this.comment.commentId;
  }




}