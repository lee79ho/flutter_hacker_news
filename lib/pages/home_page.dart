import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/story_list_view_model.dart';

class HomePage extends StatelessWidget{


  HomePage(){
    StoryListViewModel().getTopStories().then((list){
      debugPrint("$List");
    });

  }

  @override
  Widget build(BuildContext context){
    
     return Scaffold(
        appBar: AppBar(
          title: Text("Hacker News")
        ),
        body: Text("Top Stories will go here...")
      );
  }
}