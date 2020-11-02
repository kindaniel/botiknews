import 'package:botiknews/models/post.dart';
import 'package:botiknews/utilities/convert.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PostCard extends StatelessWidget {
  final Post item;
  const PostCard({Key key, this.item});
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(3);
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/bot$randomNumber.png"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name + ': ' + convertDateFromString(item.date),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 240,
                  child: Text(item.contentText,
                      maxLines: 5, overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
