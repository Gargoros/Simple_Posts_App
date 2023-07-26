import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messages_app/config/router/app_router.dart';
import 'package:messages_app/core/constants/constants.dart';
import 'package:messages_app/features/Posts/presentation/bloc/posts_bloc.dart';
import 'package:messages_app/injection.dart';

import 'config/themes/theme_data.dart';

class MessegesApp extends StatelessWidget {
  MessegesApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostsBloc>(
            create: (context) => sl()..add(const GetPosts())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        title: messegesTitleName,
        theme: AppTheme.light(),
      ),
    );
  }
}
