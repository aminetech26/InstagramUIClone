import 'package:flutter/material.dart';
class StoryComponent extends StatelessWidget {
  final String account_name;
  StoryComponent({Key? key,required this.account_name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              color: Colors.grey,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purple,
                  Colors.pink,
                  Colors.orange,
                ],
              ),
              // color: color,
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(account_name),
          ),
        ],
      ),
    );
  }
}
