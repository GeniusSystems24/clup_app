import 'package:club_app/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final routerConfig = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: HomeRoute(index: 2).location,
  routes: $appRoutes,
  debugLogDiagnostics: true,
);

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routeInformationParser: routerConfig.routeInformationParser,
      routerDelegate: routerConfig.routerDelegate,
      routeInformationProvider: routerConfig.routeInformationProvider,
    );
  }
}
