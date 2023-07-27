import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/story_component.dart';
import 'package:instagram_ui_clone/utils/post_component.dart';
class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<String> account_names = <String>['amine','racim','amir','larine','taki','haitem','mouna'];
  List<String> captions = <String>['life is good life is good life is good life is good life is good life is good life is good life is good','life is good','life is good','life is good','life is good','life is good','life is good'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
            Row(
              children: [
                Icon(Icons.add,color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(Icons.favorite,color: Colors.black,),
                ),
                Icon(Icons.share,color: Colors.black,),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(itemCount: account_names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext, index){
              return StoryComponent(account_name:account_names[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(scrollDirection:Axis.vertical,itemCount: captions.length,itemBuilder: (context,index){
              return PostComponent(account_name: account_names[index], caption: captions[index]);
            }),
          ),
        ],
      ),
    );
  }
}
