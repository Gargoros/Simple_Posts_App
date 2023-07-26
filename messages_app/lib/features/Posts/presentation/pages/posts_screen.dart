import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messages_app/config/router/app_router.gr.dart';
import 'package:messages_app/core/constants/constants.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';
import 'package:messages_app/features/Posts/presentation/bloc/posts_bloc.dart';
import 'package:messages_app/features/posts/presentation/widgets/custom_list_title.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_app_bar_widget.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_loader_indicator.dart';
import 'package:messages_app/features/posts/presentation/widgets/post_show_snackbar.dart';

@RoutePage()
class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  late List<PostEntity> _post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return const PostAppBar(title: messegesTitleName);
  }

  _buildBody() {
    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        if (state is PostsLoaded) {
          _post = state.posts!;
        }
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
            : ListView.builder(
                itemCount: _post.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomListTile(
                      post: _post[index],
                      navigateToPost: () => context.router.push(
                            PostDetailsRoute(post: _post[index]),
                          ));
                },
              );
      },
    );
  }
}
