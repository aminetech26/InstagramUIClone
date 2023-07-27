import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/feed_page.dart';
import 'package:instagram_ui_clone/pages/search_page.dart';
import 'package:instagram_ui_clone/pages/shop_page.dart';
import 'package:instagram_ui_clone/pages/reels_page.dart';
import 'package:instagram_ui_clone/pages/profile_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = <Widget>[
    FeedPage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_selectedindex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: (int index){
          setState(() {
            _selectedindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),
            label: 'Reels',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
