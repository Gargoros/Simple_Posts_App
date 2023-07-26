import 'package:messages_app/features/Posts/data/models/post_model.dart';

abstract class PostsApiService {
  Future<List<PostModel>> getPosts();
}
