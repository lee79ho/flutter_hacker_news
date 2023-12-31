

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/comment_view_model.dart';
import 'package:html_unescape/html_unescape.dart';

class CommentList extends StatelessWidget{

  final List<CommentViewModel> comments;
  final unescape = HtmlUnescape();

  CommentList({required this.comments});

  String _formatCommnetText(String text){
    final formattedText = unescape.convert(text ?? "");
    return formattedText.isNotEmpty ? formattedText.substring(0, min(200, formattedText.length)) : "";

  }

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemCount: this.comments.length, 
      itemBuilder: (context, index){
        final comment = this.comments[index];

      return ListTile(

        leading:Container(
          alignment: Alignment.center,
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange
          ),
          child: Text("${index + 1}", style:TextStyle(color:Colors.white))),
        title:Text(_formatCommnetText(comment.title)),//.convert(comments[index].title ?? "")),
      );
    },
    );
    

  }
}