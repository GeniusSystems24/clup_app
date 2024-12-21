// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $homeRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'club',
          factory: $ClubRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':clubId',
              factory: $ClubDetailsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: '/members',
                  factory: $ClubMembersRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: '/groups',
                  factory: $ClubGroupsRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: ':groupId',
                      factory: $ClubGroupMembersRouteExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'chats',
          factory: $ChatsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':chatId',
              factory: $ChatDetailsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'tasks',
          factory: $TasksRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':taskId',
              factory: $TaskDetailsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'news',
          factory: $NewsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':newsId',
              factory: $NewsDetailsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'activities',
          factory: $ActivitiesRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':activityId',
              factory: $ActivityDetailsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'calendar',
          factory: $CalendarRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':eventId',
              factory: $CalendarEventDetailsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: ':date',
              factory: $CalendarDateRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute(
        index:
            _$convertMapValue('index', state.uri.queryParameters, int.parse) ??
                0,
      );

  String get location => GoRouteData.$location(
        '/home',
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

extension $ClubRouteExtension on ClubRoute {
  static ClubRoute _fromState(GoRouterState state) => ClubRoute();

  String get location => GoRouteData.$location(
        '/home/club',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClubDetailsRouteExtension on ClubDetailsRoute {
  static ClubDetailsRoute _fromState(GoRouterState state) => ClubDetailsRoute(
        clubId: state.pathParameters['clubId']!,
      );

  String get location => GoRouteData.$location(
        '/home/club/${Uri.encodeComponent(clubId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClubMembersRouteExtension on ClubMembersRoute {
  static ClubMembersRoute _fromState(GoRouterState state) => ClubMembersRoute();

  String get location => GoRouteData.$location(
        '/members',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClubGroupsRouteExtension on ClubGroupsRoute {
  static ClubGroupsRoute _fromState(GoRouterState state) => ClubGroupsRoute();

  String get location => GoRouteData.$location(
        '/groups',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClubGroupMembersRouteExtension on ClubGroupMembersRoute {
  static ClubGroupMembersRoute _fromState(GoRouterState state) =>
      ClubGroupMembersRoute(
        groupId: state.pathParameters['groupId']!,
      );

  String get location => GoRouteData.$location(
        '/groups/${Uri.encodeComponent(groupId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatsRouteExtension on ChatsRoute {
  static ChatsRoute _fromState(GoRouterState state) => ChatsRoute();

  String get location => GoRouteData.$location(
        '/home/chats',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatDetailsRouteExtension on ChatDetailsRoute {
  static ChatDetailsRoute _fromState(GoRouterState state) => ChatDetailsRoute(
        chatId: state.pathParameters['chatId']!,
      );

  String get location => GoRouteData.$location(
        '/home/chats/${Uri.encodeComponent(chatId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TasksRouteExtension on TasksRoute {
  static TasksRoute _fromState(GoRouterState state) => TasksRoute();

  String get location => GoRouteData.$location(
        '/home/tasks',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TaskDetailsRouteExtension on TaskDetailsRoute {
  static TaskDetailsRoute _fromState(GoRouterState state) => TaskDetailsRoute(
        taskId: state.pathParameters['taskId']!,
      );

  String get location => GoRouteData.$location(
        '/home/tasks/${Uri.encodeComponent(taskId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewsRouteExtension on NewsRoute {
  static NewsRoute _fromState(GoRouterState state) => NewsRoute();

  String get location => GoRouteData.$location(
        '/home/news',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewsDetailsRouteExtension on NewsDetailsRoute {
  static NewsDetailsRoute _fromState(GoRouterState state) => NewsDetailsRoute(
        newsId: state.pathParameters['newsId']!,
      );

  String get location => GoRouteData.$location(
        '/home/news/${Uri.encodeComponent(newsId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ActivitiesRouteExtension on ActivitiesRoute {
  static ActivitiesRoute _fromState(GoRouterState state) => ActivitiesRoute();

  String get location => GoRouteData.$location(
        '/home/activities',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ActivityDetailsRouteExtension on ActivityDetailsRoute {
  static ActivityDetailsRoute _fromState(GoRouterState state) =>
      ActivityDetailsRoute(
        activityId: state.pathParameters['activityId']!,
      );

  String get location => GoRouteData.$location(
        '/home/activities/${Uri.encodeComponent(activityId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CalendarRouteExtension on CalendarRoute {
  static CalendarRoute _fromState(GoRouterState state) => CalendarRoute();

  String get location => GoRouteData.$location(
        '/home/calendar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CalendarEventDetailsRouteExtension on CalendarEventDetailsRoute {
  static CalendarEventDetailsRoute _fromState(GoRouterState state) =>
      CalendarEventDetailsRoute(
        eventId: state.pathParameters['eventId']!,
      );

  String get location => GoRouteData.$location(
        '/home/calendar/${Uri.encodeComponent(eventId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CalendarDateRouteExtension on CalendarDateRoute {
  static CalendarDateRoute _fromState(GoRouterState state) => CalendarDateRoute(
        date: state.pathParameters['date']!,
      );

  String get location => GoRouteData.$location(
        '/home/calendar/${Uri.encodeComponent(date)}',
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
