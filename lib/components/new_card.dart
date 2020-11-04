import 'package:botiknews/models/post.dart';
import 'package:botiknews/pages/posts/bloc/post_bloc.dart';
import 'package:botiknews/pages/posts/components/post_edit.dart';
import 'package:botiknews/settings.dart';
import 'package:botiknews/utilities/convert.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewPostCard extends StatelessWidget {
  final Post item;
  const NewPostCard({Key key, this.item});
  @override
  Widget build(BuildContext context) {
    final PostBloc bloc = Provider.of<PostBloc>(context);

    return Card(
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
          Settings.userId == item.userId
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const SizedBox(width: 10),
                    TextButton(
                      child: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      onPressed: () async {
                        await bloc.delete(item);
                      },
                    ),
                    TextButton(
                      child: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      onPressed: () async {
                        push(context, PostEdit(item: item));
                      },
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(width: 10),
                    TextButton(
                        child: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        onPressed: () {})
                  ],
                ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
