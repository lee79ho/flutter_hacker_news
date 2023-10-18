import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/story_list_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>{


@override
void initState(){
  super.initState();
  Provider.of<StoryListViewModel>(context, listen:false).getTopStories();
}


  @override
  Widget build(BuildContext context){
    
    final vm = Provider.of<StoryListViewModel>(context);
    debugPrint("${vm.stories.length}");

     return Scaffold(
        appBar: AppBar(
          title: Text("Hacker News")
        ),
        body: Text("Top Stories will go here...")
      );
  }
}