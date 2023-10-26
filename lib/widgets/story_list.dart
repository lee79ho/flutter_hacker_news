

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_models/story_view_model.dart';

class StoryList extends StatelessWidget {

  final List<StoryViewModel> stories;
  final VoidCallback onSelected;




  StoryList({required this.stories,required this.onSelected});


  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemCount: 10, itemBuilder: (context, index){
      final story = this.stories[index];

      return ListTile(
        onTap: (){
          // perform navigation here

        },
        title:  Text(story.title, style: TextStyle(fontSize: 20)),
        trailing: Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.green, 
            borderRadius: BorderRadius.circular(16)
            ),
        child: Text("${story.noOfComments}}", style: TextStyle(color: Colors.white))
        ),
      );
    },
    );
  }
}