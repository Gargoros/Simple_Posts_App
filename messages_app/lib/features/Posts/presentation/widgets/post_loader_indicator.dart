import 'package:flutter/material.dart';

class PostLoaderIndicator extends StatelessWidget {
  const PostLoaderIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
