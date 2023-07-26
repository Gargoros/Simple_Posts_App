import 'package:messages_app/core/resources/data_state.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';

abstract class PostsRepository {
  // API methods
  Future<DataState<List<PostEntity>>> getPosts();
}
