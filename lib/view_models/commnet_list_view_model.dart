


import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/webservice.dart';
import 'package:flutter_application_1/view_models/comment_view_model.dart';
import 'package:flutter_application_1/view_models/story_view_model.dart';

class CommentListViewModel extends ChangeNotifier{

  List<CommentViewModel> commnets =[];

  void getcommnetsByStory(StoryViewModel storyVM) async
  {
    final results = await Webservice().getCommnetsByStory(storyVM.story);

    this.commnets = results.map((item) => CommentViewModel(comment:item)).toList();
    notifyListeners();
    

  }
  
}
