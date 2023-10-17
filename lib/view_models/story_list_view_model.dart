



import 'package:flutter_application_1/services/webservice.dart';
import 'package:flutter_application_1/view_models/story_view_model.dart';

class StoryListViewModel{

  late List<StoryViewModel> stories;//= List<StoryViewModel>();

  Future<List<StoryViewModel>> getTopStories() async {
     final Iterable results = await Webservice().getTopStories();
     return results.map((story) => StoryViewModel(story: story)).toList();
   
  }


}