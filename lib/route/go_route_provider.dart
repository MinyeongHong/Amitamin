import 'package:amitamin/route/named_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:amitamin/home/home.dart';
import 'package:amitamin/analysis/analysis.dart';
import 'package:amitamin/my/my.dart';
import 'package:amitamin/main/main.dart';
import 'package:amitamin/error/error.dart';

final goRouterProvider = Provider<GoRouter>((ref) => goRouteList());

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavKey = GlobalKey<NavigatorState>();

GoRouter goRouteList() {
  return GoRouter(
      navigatorKey: rootNavKey,
      initialLocation: '/home',
      routes: [
        ShellRoute(
            navigatorKey: shellNavKey,
            builder: (context, state, child) {
              return MainScreen(child: child);
            },
            routes: <RouteBase> [
              GoRoute(
                  path: '/home',
                  name: home,
                  builder: (context, state) => HomeScreen(key: state.pageKey,),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavKey,
                      path: 'fatigueCheck',
                      name: fatigueCheck,
                      builder: (context, state) => FatigueCheckScreen(key: state.pageKey,),
                    ),
                  ],
              ),
              GoRoute(
                  path: '/analysis',
                  name: analysis,
                  builder: (context, state) => AnalysisScreen(key: state.pageKey,)
              ),
              GoRoute(
                  path: '/my',
                  name: my,
                  builder: (context, state) => MyScreen(key: state.pageKey,)
              ),
            ]
        ),
      ],
      errorBuilder: (context, state) => RouteErrorScreen(
        errorMsg: state.error.toString(),
        key: state.pageKey,
      )
  );
}