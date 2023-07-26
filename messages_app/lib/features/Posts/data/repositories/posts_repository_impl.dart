import 'package:http/http.dart';
import 'package:messages_app/core/resources/data_state.dart';
import 'package:messages_app/features/Posts/data/datasources/posts_api_service.dart';
import 'package:messages_app/features/Posts/data/models/post_model.dart';
import 'package:messages_app/features/Posts/domain/repositories/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsApiService _postsApiService;

  PostsRepositoryImpl(
    this._postsApiService,
  );

  @override
  Future<DataState<List<PostModel>>> getPosts() async {
    final posts = await _postsApiService.getPosts();
    try {
      if (posts.isNotEmpty) {
        return DataSuccess(posts);
      } else {
        return DataFailed(ClientException(""));
      }
    } on Exception catch (error) {
      return DataFailed(ClientException(error.toString()));
    }
  }
}
