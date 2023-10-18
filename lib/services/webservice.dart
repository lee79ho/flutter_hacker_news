
import 'dart:convert';

import 'package:flutter_application_1/models/story.dart';
import 'package:http/http.dart' as http;

class Webservice{


  Future<Story> _getStory(int storyId) async {
    
   // var url = Uri.https('hacker-news.firebaseio.com', 'v0/item/$storyId.json?print=pretty');
      final url = Uri.parse(
  "https://hacker-news.firebaseio.com/v0/item/$storyId.json?print=pretty",
);
    final response = await http.get(url);

    if(response.statusCode == 200){

      final json = jsonDecode(response.body);
      return Story.fromJson(json);

    }
    else{
      throw Exception("Failed to get story");
    }
    
  }

  Future<List<Story>> getTopStories() async{

   // final urlstr = "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty";
  //var url = Uri.https('hacker-news.firebaseio.com', 'v0/topstories.json?print=pretty');
  final url = Uri.parse(
  "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty",
);
  final response = await http.get(url);

  if(response.statusCode == 200){
    // get the ids
   Iterable storyIds =  jsonDecode(response.body);
   return Future.wait(storyIds.take(10).map((storyId){
    return _getStory(storyId);
   }));


  } else {
    throw Exception("Unable to fetch data!");
  }

 


    

//https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty
  }


}