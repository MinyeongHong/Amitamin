import 'package:amitamin/route/named_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:amitamin/home/home.dart';
import 'package:amitamin/analysis/analysis.dart';
import 'package:amitamin/my/my.dart';
import 'package:amitamin/main/main.dart';
import 'package:amitamin/error/error.dart';

final goRouterProvider = Provider<GoRouter>((ref) => goRouteList());

GoRouter goRouteList() {
  return GoRouter(
      initialLocation: '/main',
      routes: [
        GoRoute(
            path: '/main',
            name: root,
            builder: (context, state) => MainScreen(key: state.pageKey,),
            routes: [
              GoRoute(
                path: 'home/fatigueCheck',
                name: fatigueCheck,
                builder: (context, state) => FatigueCheckScreen(key: state.pageKey,),
              ),
          ]
        ),
        GoRoute(
            path: '/home',
            name: home,
            builder: (context, state) => HomeScreen(key: state.pageKey,)
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
      ],
      errorBuilder: (context, state) => RouteErrorScreen(
        errorMsg: state.error.toString(),
        key: state.pageKey,
      )
  );
}