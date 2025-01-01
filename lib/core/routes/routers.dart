import 'package:flutter_practice/core/routes/navigator_key.dart';
import 'package:flutter_practice/core/store/route_path.dart';
import 'package:flutter_practice/features/_global/screen/root.dart';
import 'package:flutter_practice/features/home/screen/home_screen.dart';
import 'package:flutter_practice/features/profile/screen/profile_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter routers = GoRouter(
  initialLocation: RoutePath.home,
  routes: [
    ShellRoute(
      navigatorKey: shellNavigatorKey,
      builder: ((context, route, children) => RootScreen(children: children)),
      routes: <RouteBase>[
        GoRoute(
          path: RoutePath.home,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: HomeScreen()),
        ),
        GoRoute(
          path: RoutePath.profile,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: ProfileScreen()),
        ),
      ],
    )
  ],
);
