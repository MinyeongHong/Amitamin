import 'package:amitamin/pages/pages.dart';
import 'package:amitamin/route/named_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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