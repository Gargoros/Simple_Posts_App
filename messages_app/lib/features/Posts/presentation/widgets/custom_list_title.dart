import 'package:flutter/material.dart';
import 'package:messages_app/core/constants/constants.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.post,
    required this.navigateToPost,
  }) : super(key: key);

  final PostEntity post;
  final void Function() navigateToPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: navigateToPost,
          child: Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            color: Theme.of(context).colorScheme.tertiary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -18,
                  left: -18,
                  child: CircleAvatar(
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    radius: 40,
                    child: Text(
                      post.userId.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 70,
                          right: 10,
                          bottom: 6,
                          top: 6,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              post.title!.replaceAll("\n", " "),
                              style: Theme.of(context).textTheme.titleLarge,
                              textAlign: TextAlign.right,
                            ),
                            Text(
                              postIdString + post.id.toString(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              post.body!.replaceAll("\n", " "),
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
