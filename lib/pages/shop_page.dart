import 'package:flutter/material.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Shop',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.calendar_today,color: Colors.black,),
                ),
                  Icon(Icons.menu,color: Colors.black,),
              ],
            ),
            ],
          )
        ),
        body:  Column(
          children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          decoration: BoxDecoration(
          color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
          ),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
              border: InputBorder.none,

            ),
          ),
      ),
        ),
            Expanded(
              child: GridView.builder(itemCount: 20,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.green[100],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
