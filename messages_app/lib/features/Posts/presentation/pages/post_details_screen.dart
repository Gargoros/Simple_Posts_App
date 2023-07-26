// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';
import 'package:messages_app/features/Posts/presentation/bloc/posts_bloc.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_app_bar_widget.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_card.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_loader_indicator.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_show_snackbar.dart';

@RoutePage()
class PostDetailsScreen extends StatefulWidget {
  final PostEntity post;
  const PostDetailsScreen({
    super.key,
    required this.post,
  });

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  _buildAppBar() {
    return PostAppBar(title: widget.post.title.toString());
  }

  _buildBody(BuildContext context) {
    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        if (state is PostsFaild) {
          showSnackBar(
            context,
            state.error.toString(),
          );
        }
      },
      builder: (_, state) {
        return state is PostsInitial
            ? const PostLoaderIndicator()
            : PostCard(
                post: widget.post,
              );
      },
    );
  }
}
