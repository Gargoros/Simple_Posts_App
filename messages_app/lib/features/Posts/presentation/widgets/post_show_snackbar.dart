import 'package:flutter/material.dart';
import 'package:messages_app/core/constants/constants.dart';
import 'package:messages_app/features/Posts/presentation/bloc/posts_bloc.dart';
import 'package:messages_app/injection.dart';

void showSnackBar(context, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      action: SnackBarAction(
          label: refresh,
          onPressed: () => PostsBloc(sl()).add(const GetPosts())),
    ),
  );
}
