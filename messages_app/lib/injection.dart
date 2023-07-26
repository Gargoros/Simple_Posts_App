import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:messages_app/features/Posts/data/datasources/posts_api_service.dart';
import 'package:messages_app/features/Posts/data/datasources/posts_api_service_impl.dart';
import 'package:messages_app/features/Posts/data/repositories/posts_repository_impl.dart';
import 'package:messages_app/features/Posts/domain/repositories/posts_repository.dart';
import 'package:messages_app/features/Posts/domain/usecases/get_posts.dart';
import 'package:messages_app/features/Posts/presentation/bloc/posts_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // external
  sl.registerLazySingleton(() => http.Client());
  // bloc
  sl.registerFactory(() => PostsBloc(sl()));

  // usecase
  sl.registerLazySingleton(() => GetPostsUseCase(sl()));

  //Dependencies
  sl.registerSingleton<PostsApiService>(PostsApiServiceImpl(client: sl()));

  sl.registerLazySingleton<PostsRepository>(
    () => PostsRepositoryImpl(
      sl(),
    ),
  );
}
