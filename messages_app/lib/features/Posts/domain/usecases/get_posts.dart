import 'package:messages_app/core/resources/data_state.dart';
import 'package:messages_app/core/usecase/usecase.dart';
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';
import 'package:messages_app/features/Posts/domain/repositories/posts_repository.dart';

class GetPostsUseCase implements UseCase<DataState<List<PostEntity>>, void> {
  final PostsRepository _postsRepository;

  GetPostsUseCase(this._postsRepository);

  @override
  Future<DataState<List<PostEntity>>> call({void params}) {
    return _postsRepository.getPosts();
  }
}
