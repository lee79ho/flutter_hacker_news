

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/story_view_model.dart';

class StoryList extends StatelessWidget {

  final List<StoryViewModel> stories;

  StoryList({required this.stories});


  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemCount: 10, itemBuilder: (context, index){
      final story = this.stories[index];
      return ListTile(
        title: Text(story.title, style: TextStyle(fontSize: 20)),
      );
    },
    );
  }
}