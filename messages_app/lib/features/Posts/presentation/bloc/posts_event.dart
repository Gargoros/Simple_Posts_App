part of 'posts_bloc.dart';

@immutable
abstract class PostsEvent {
  const PostsEvent();
}

class GetPosts extends PostsEvent {
  const GetPosts();
}
