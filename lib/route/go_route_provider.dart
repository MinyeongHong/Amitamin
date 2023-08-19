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
            builder: (context, state) => MainPage(key: state.pageKey,)
        ),
        GoRoute(
            path: '/home',
            name: home,
            builder: (context, state) => HomePage(key: state.pageKey,)
        ),
        GoRoute(
            path: '/analysis',
            name: analysis,
            builder: (context, state) => AnalysisPage(key: state.pageKey,)
        ),
        GoRoute(
            path: '/my',
            name: my,
            builder: (context, state) => MyPage(key: state.pageKey,)
        ),
      ],
      errorBuilder: (context, state) => RouteErrorPage(
        errorMsg: state.error.toString(),
        key: state.pageKey,
      )
  );
}