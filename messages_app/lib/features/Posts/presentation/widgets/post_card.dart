import 'package:flutter/material.dart';
import 'package:messages_app/core/constants/constants.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';

class PostCard extends StatelessWidget {
  final PostEntity post;
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      color: Theme.of(context).colorScheme.tertiary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              userId,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text("${post.userId}"),
          ),
          ListTile(
            title: Text(
              id,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text("${post.id}"),
          ),
          ListTile(
            title: Text(
              postBody,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(post.body.toString()),
          ),
        ],
      ),
    );
  }
}
