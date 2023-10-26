

import 'package:flutter_application_1/models/story.dart';

class StoryViewModel{

  final Story story;

  StoryViewModel({required this.story});

  String get title{
    return this.story.title;
  }

  String get url{
    return this.story.url;
  
  }

  int get noOfComments{
    return this.story.commentIds.length;

  }




}