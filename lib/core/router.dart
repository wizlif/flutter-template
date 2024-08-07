import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

GoRouter appRouter() {
  return GoRouter(
    routes: [
      // StatefulShellRoute.indexedStack(
      //   branches: [
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: AppPage.home.path,
      //           pageBuilder: (_, __) =>
      //               const NoTransitionPage(child: Page1()),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: [
      //         GoRoute(
      //           path: AppPage.page2.path,
      //           pageBuilder: (_, __) =>
      //               const NoTransitionPage(child: Page2()),
      //         ),
      //       ],
      //     ),
      //   ],
      //   builder: (
      //     BuildContext context,
      //     GoRouterState state,
      //     StatefulNavigationShell navigationShell,
      //   ) {
      //     return HomePage(navigationShell: navigationShell);
      //   },
      // ),
      // GoRoute(
      //   path: AppPage.auth.path,
      //   pageBuilder: (context, state) =>
      //       const NoTransitionPage(child: LoginPage()),
      // ),
    ],
    initialLocation: AppPage.auth.path,
  );
}

enum AppPage {
  home('/'),
  page2('/page2'),
  auth('/auth');

  final String path;
  const AppPage(this.path);
}

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return appRouter();
}
