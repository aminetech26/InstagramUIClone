import 'package:flutter/material.dart';
class PostComponent extends StatefulWidget {
  final String account_name;
  final String caption;

  PostComponent({Key? key,required this.account_name,required this.caption}) : super(key: key);

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween
      ,children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color:Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(widget.account_name,style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],),

        Container(
          height: 350,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Row(
              children: [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(Icons.comment),
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.report),
          ],),
        ),
       Container(
         alignment: Alignment.topLeft,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: RichText(text: TextSpan(children: [
             TextSpan(
             text: widget.account_name,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
             TextSpan(
                 text:'  ' + widget.caption,style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.black)),
           ]),),
         ),
       )
      ],
    );
  }
}
