



import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/webservice.dart';
import 'package:flutter_application_1/view_models/story_view_model.dart';

class StoryListViewModel extends ChangeNotifier{

  late List<StoryViewModel> stories =  [];

  Future<void> getTopStories() async {
     final Iterable results = await Webservice().getTopStories();
     this.stories = results.map((story) => StoryViewModel(story: story)).toList();
     notifyListeners();
   
  }


}