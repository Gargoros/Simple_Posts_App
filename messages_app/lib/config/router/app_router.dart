import 'package:auto_route/auto_route.dart';
import 'package:messages_app/config/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        CustomRoute(
          page: PostsRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        CustomRoute(
          page: PostDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
      ];
}
