import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:messages_app/core/constants/constants.dart';
import 'package:messages_app/features/Posts/data/datasources/posts_api_service.dart';
import 'package:messages_app/features/Posts/data/models/post_model.dart';

class PostsApiServiceImpl implements PostsApiService {
  final http.Client client;
  PostsApiServiceImpl({required this.client});
  @override
  Future<List<PostModel>> getPosts() async {
    final response = await client.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      List<PostModel> posts = body
          .map<PostModel>(
              (dynamic i) => PostModel.fromJson(i as Map<String, dynamic>))
          .toList();

      return posts;
    } else {
      throw apiError;
    }
  }
}
