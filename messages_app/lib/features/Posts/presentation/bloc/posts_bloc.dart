import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:messages_app/core/resources/data_state.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';
import 'package:messages_app/features/Posts/domain/usecases/get_posts.dart';
import 'package:meta/meta.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetPostsUseCase _getPostsUseCase;
  PostsBloc(this._getPostsUseCase) : super(const PostsInitial()) {
    on<GetPosts>(onGetPost);
  }

  void onGetPost(GetPosts event, Emitter<PostsState> emit) async {
    final dataState = await _getPostsUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(PostsLoaded(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(PostsFaild(dataState.error!));
    }
  }
}
