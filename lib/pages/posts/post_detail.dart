import 'package:botiknews/models/post.dart';
import 'package:botiknews/settings.dart';
import 'package:botiknews/utilities/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  final Post item;

  const PostDetail({this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:16, left: 8),
                child: TextButton(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Detalhes da postagem',
                    style: TextStyle(
                        fontFamily: Settings.fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.verified,
                            color: Colors.lightGreen,
                          ),
                          title: Text(item.name),
                          subtitle: Text(item.contentText),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            const SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Data da postagem: " +
                                    convertDateFromString(item.date),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
