

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view_models/commnet_list_view_model.dart';
import 'package:flutter_application_1/view_models/story_view_model.dart';
import 'package:flutter_application_1/widgets/comment_list.dart';
import 'package:provider/provider.dart';

class CommentListPage extends StatefulWidget{

  final StoryViewModel story;

  CommentListPage({required this.story});

  @override
  _CommentListPageState createState() => _CommentListPageState();
}

class _CommentListPageState extends State<CommentListPage>{


@override
void initState()
{
  super.initState();
  Provider.of<CommentListViewModel>(context, listen:false).getcommnetsByStory(this.widget.story);
}
  

  @override
  Widget build(BuildContext context){

    final vm = Provider.of<CommentListViewModel>(context);



    return Scaffold(appBar: AppBar(
      title:Text(this.widget.story.title)
    ),
    
    body: CommentList(comments: vm.commnets)
    );

  }
}