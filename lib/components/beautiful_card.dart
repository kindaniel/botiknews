import 'package:botiknews/models/news.dart';
import 'package:botiknews/utilities/convert.dart';
import 'package:flutter/material.dart';

class BeaultifulCard extends StatelessWidget {
  final News item;
  const BeaultifulCard({Key key, this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Hero(
                      tag: 'assets/images/bot0.png',
                      child: Image(
                          image: AssetImage('assets/images/bot0.png'),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.user.name + ': '+convertDateFromString(item.message.createdAt),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                        Container(
                          width: 240,
                          child: Text(item.message.content,
                              maxLines: 5, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
