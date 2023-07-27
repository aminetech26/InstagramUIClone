import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/story_component.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> account_names = <String>['amine','racim','amir','larine','taki','haitem','mouna'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                   height: 100,
                     width: 100,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.grey[350],
                     ),
                    )
                    ,Column(
                    children: [
                      Text('Posts',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('100',style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Followers',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('273',style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Following',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('517',style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),),
                    ],
                  )],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Account Name',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 5,),
                    Text('The big secret is that there is no big secret, if you are willing to do something than you will do it'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: account_names.length,itemBuilder: (context,index){
                    return StoryComponent(account_name: account_names[index]);
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                  Expanded(child: OutlinedButton(
                    onPressed: (){},
                    child: Text('Edit Text',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[400])),
                  )),
                  Expanded(child: OutlinedButton(
                    onPressed: (){},
                    child: Text('Ad tools',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[400])),
                  )),
                  Expanded(child: OutlinedButton(
                    onPressed: (){},
                    child: Text('Insights',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[400])),
                  )),
                ],),
              ),
              TabBar(indicatorColor: Colors.black,tabs: [Tab(
                  icon: Icon(Icons.person,color: Colors.grey,),
              ),
                Tab(
                  icon: Icon(Icons.video_call,color: Colors.grey,),

                ),
                Tab(
                  icon: Icon(Icons.shop,color: Colors.grey,),

                ),
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined,color: Colors.grey,),

                ),
              ]),
              Expanded(
                child: TabBarView(children: [

                  GridView.builder(itemCount: 20,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      color: Colors.grey[200],
                    ),
                  );
                    }),
                  GridView.builder(itemCount: 20,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            color: Colors.green[100],
                          ),
                        );
                      }),
                  GridView.builder(itemCount: 20,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            color: Colors.yellowAccent[200],
                          ),
                        );
                      }),
                  GridView.builder(itemCount: 20,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            color: Colors.red[200],
                          ),
                        );
                      }),
                ]),
              )

            ],
          ),
        ),
      ),
    );

  }
}
