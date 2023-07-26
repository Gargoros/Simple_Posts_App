part of 'posts_bloc.dart';

@immutable
abstract class PostsState extends Equatable {
  final List<PostEntity>? posts;
  final Exception? error;
  const PostsState({this.posts, this.error});

  @override
  List<Object> get props => [posts!, error!];
}

class PostsInitial extends PostsState {
  const PostsInitial();
}

class PostsLoaded extends PostsState {
  const PostsLoaded(List<PostEntity> posts) : super(posts: posts);
}

class PostsFaild extends PostsState {
  const PostsFaild(ClientException error) : super(error: error);
}
