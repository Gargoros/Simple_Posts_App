// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';
import 'package:messages_app/features/posts/presentation/pages/post_details_screen.dart'
    as _i2;
import 'package:messages_app/features/posts/presentation/pages/posts_screen.dart'
    as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    PostsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.PostsScreen(),
      );
    },
    PostDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PostDetailsScreen(
          key: args.key,
          post: args.post,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.PostsScreen]
class PostsRoute extends _i3.PageRouteInfo<void> {
  const PostsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PostDetailsScreen]
class PostDetailsRoute extends _i3.PageRouteInfo<PostDetailsRouteArgs> {
  PostDetailsRoute({
    _i4.Key? key,
    required PostEntity post,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          PostDetailsRoute.name,
          args: PostDetailsRouteArgs(
            key: key,
            post: post,
          ),
          initialChildren: children,
        );

  static const String name = 'PostDetailsRoute';

  static const _i3.PageInfo<PostDetailsRouteArgs> page =
      _i3.PageInfo<PostDetailsRouteArgs>(name);
}

class PostDetailsRouteArgs {
  const PostDetailsRouteArgs({
    this.key,
    required this.post,
  });

  final _i4.Key? key;

  final PostEntity post;

  @override
  String toString() {
    return 'PostDetailsRouteArgs{key: $key, post: $post}';
  }
}
