// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $clubRoute,
    ];

RouteBase get $clubRoute => GoRouteData.$route(
      path: '/',
      factory: $ClubRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/MainAppHomeTabs',
          factory: $MainAppHomeTabsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'ClubHomeTabsView?id=:clubId',
              factory: $ClubHomeTabsViewRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'ClubInternalGroupsPageView',
                  factory: $ClubInternalGroupsPageViewRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'GroupRoomsScreen?id=:groupId',
                      factory: $GroupRoomsScreenRouteExtension._fromState,
                      routes: [
                        GoRouteData.$route(
                          path: 'ChatScreen?id=:roomId',
                          factory: $ChatScreenRouteExtension._fromState,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $ClubRouteExtension on ClubRoute {
  static ClubRoute _fromState(GoRouterState state) => ClubRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MainAppHomeTabsRouteExtension on MainAppHomeTabsRoute {
  static MainAppHomeTabsRoute _fromState(GoRouterState state) =>
      MainAppHomeTabsRoute(
        index:
            _$convertMapValue('index', state.uri.queryParameters, int.parse) ??
                0,
      );

  String get location => GoRouteData.$location(
        '/MainAppHomeTabs',
        queryParams: {
          if (index != 0) 'index': index.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClubHomeTabsViewRouteExtension on ClubHomeTabsViewRoute {
  static ClubHomeTabsViewRoute _fromState(GoRouterState state) =>
      ClubHomeTabsViewRoute(
        clubId: state.pathParameters['clubId']!,
      );

  String get location => GoRouteData.$location(
        'ClubHomeTabsView?id=${Uri.encodeComponent(clubId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClubInternalGroupsPageViewRouteExtension
    on ClubInternalGroupsPageViewRoute {
  static ClubInternalGroupsPageViewRoute _fromState(GoRouterState state) =>
      ClubInternalGroupsPageViewRoute(
        clubId: state.pathParameters['clubId']!,
      );

  String get location => GoRouteData.$location(
        'ClubHomeTabsView?id=${Uri.encodeComponent(clubId)}/ClubInternalGroupsPageView',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GroupRoomsScreenRouteExtension on GroupRoomsScreenRoute {
  static GroupRoomsScreenRoute _fromState(GoRouterState state) =>
      GroupRoomsScreenRoute(
        groupId: state.pathParameters['groupId']!,
        clubId: state.uri.queryParameters['club-id']!,
      );

  String get location => GoRouteData.$location(
        'GroupRoomsScreen?id=${Uri.encodeComponent(groupId)}',
        queryParams: {
          'club-id': clubId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatScreenRouteExtension on ChatScreenRoute {
  static ChatScreenRoute _fromState(GoRouterState state) => ChatScreenRoute(
        roomId: state.pathParameters['roomId']!,
        clubId: state.uri.queryParameters['club-id']!,
        groupId: state.uri.queryParameters['group-id']!,
      );

  String get location => GoRouteData.$location(
        'ChatScreen?id=${Uri.encodeComponent(roomId)}',
        queryParams: {
          'club-id': clubId,
          'group-id': groupId,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
