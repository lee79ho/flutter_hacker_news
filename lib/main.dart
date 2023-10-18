import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/view_models/story_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hacker News",
      home: 
      ChangeNotifierProvider(create: (context) => StoryListViewModel(),
      child: HomePage(),
      
      )
      
     

    );
  }
}
