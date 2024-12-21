import 'package:club_app/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

// start: "/"

// الواجهة الئيسية وملحقاتها
// home: "/home"

// الاندية و ملحقاتها
// clubs: "/home/club"
// clubDetails: "/home/club/:clubId"
// clubMembers: "/home/club/:clubId/members"
// clubGroups: "/home/club/:clubId/groups"
// clubGroupMembers: "/home/club/:clubId/groups/:groupId/members"
// clubGroupRooms: "/home/club/:clubId/groups/:groupId/rooms"
// clubGroupRoomChat: "/home/club/:clubId/groups/:groupId/chat/:roomId"

// المحادثات وملحقاتها
// chats: "/home/chats" // انواعها : المنفصلة , الجماعية , الدعم الفني , المغلقة
// chatDetails: "/home/chats/:chatId"

// المهام وملحقاتها
// tasks: "/home/tasks"
// taskDetails: "/home/tasks/:taskId"

// الاخبار وملحقاتها
// news: "/home/news"
// newsDetails: "/home/news/:newsId"

// الانشطة وملحقاتها
// activities: "/home/activities"
// activityDetails: "/home/activities/:activityId"

// التقويم وملحقاتها
// calendar: "/home/calendar"
// calendarEventDetails: "/home/calendar/:eventId"
// calendarDate: "/home/calendar/:date"

@TypedGoRoute<SplashRoute>(path: '/')
// تعريفات الدوال المرتبطة بكل مسار
class SplashRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashScreen();
}

@TypedGoRoute<HomeRoute>(path: '/home', routes: [
  TypedGoRoute<ClubRoute>(path: 'club', routes: [
    TypedGoRoute<ClubDetailsRoute>(path: ':clubId', routes: [
      TypedGoRoute<ClubMembersRoute>(path: '/members'),
      TypedGoRoute<ClubGroupsRoute>(path: '/groups', routes: [
        TypedGoRoute<ClubGroupMembersRoute>(path: ':groupId'),
        // TypedGoRoute<ClubGroupMembersRoute>(path: ':groupId/members'),
        // TypedGoRoute<ClubGroupRoomsRoute>(path: ':groupId/rooms', routes: [
        //   TypedGoRoute<ClubGroupRoomChatRoute>(path: 'chat/:roomId'),
        // ]),
      ]),
    ]),
  ]),
  TypedGoRoute<ChatsRoute>(path: 'chats', routes: [
    TypedGoRoute<ChatDetailsRoute>(path: ':chatId'),
  ]),
  TypedGoRoute<TasksRoute>(path: 'tasks', routes: [
    TypedGoRoute<TaskDetailsRoute>(path: ':taskId'),
  ]),
  TypedGoRoute<NewsRoute>(path: 'news', routes: [
    TypedGoRoute<NewsDetailsRoute>(path: ':newsId'),
  ]),
  TypedGoRoute<ActivitiesRoute>(path: 'activities', routes: [
    TypedGoRoute<ActivityDetailsRoute>(path: ':activityId'),
  ]),
  TypedGoRoute<CalendarRoute>(path: 'calendar', routes: [
    TypedGoRoute<CalendarEventDetailsRoute>(path: ':eventId'),
    TypedGoRoute<CalendarDateRoute>(path: ':date'),
  ]),
])
class HomeRoute extends GoRouteData {
  final int index;
  HomeRoute({this.index = 0});
  @override
  Widget build(BuildContext context, GoRouterState state) => HomeScreen(indexTab: index);
}

class ClubRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ClubsScreen();
}

class ClubDetailsRoute extends GoRouteData {
  final String clubId;
  ClubDetailsRoute({required this.clubId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ClubDetailsScreen(clubId: clubId);
}

class ClubMembersRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ClubMembersScreen();
}

class ClubGroupsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ClubGroupsScreen();
}

class ClubGroupMembersRoute extends GoRouteData {
  final String groupId;
  ClubGroupMembersRoute({required this.groupId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ClubGroupMembersScreen(groupId: groupId);
}

class ClubGroupRoomsRoute extends GoRouteData {
  final String groupId;
  ClubGroupRoomsRoute({required this.groupId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ClubGroupRoomsScreen(groupId: groupId);
}

class ClubGroupRoomChatRoute extends GoRouteData {
  final String roomId;
  ClubGroupRoomChatRoute({required this.roomId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ChatScreen(roomId: roomId);
}

class ChatsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ChatsScreen();
}

class ChatDetailsRoute extends GoRouteData {
  final String chatId;
  ChatDetailsRoute({required this.chatId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ChatDetailsScreen(chatId: chatId);
}

class TasksRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const TasksScreen();
}

class TaskDetailsRoute extends GoRouteData {
  final String taskId;
  TaskDetailsRoute({required this.taskId});

  @override
  Widget build(BuildContext context, GoRouterState state) => TaskDetailsScreen(taskId: taskId);
}

class NewsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const NewsScreen();
}

class NewsDetailsRoute extends GoRouteData {
  final String newsId;
  NewsDetailsRoute({required this.newsId});

  @override
  Widget build(BuildContext context, GoRouterState state) => NewsDetailsScreen(newsId: newsId);
}

class ActivitiesRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ActivitiesScreen();
}

class ActivityDetailsRoute extends GoRouteData {
  final String activityId;
  ActivityDetailsRoute({required this.activityId});

  @override
  Widget build(BuildContext context, GoRouterState state) => ActivityDetailsScreen(activityId: activityId);
}

class CalendarRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const CalendarScreen();
}

class CalendarEventDetailsRoute extends GoRouteData {
  final String eventId;
  CalendarEventDetailsRoute({required this.eventId});

  @override
  Widget build(BuildContext context, GoRouterState state) => CalendarEventDetailsScreen(eventId: eventId);
}

class CalendarDateRoute extends GoRouteData {
  final String date;
  CalendarDateRoute({required this.date});

  @override
  Widget build(BuildContext context, GoRouterState state) => CalendarDateScreen(date: date);
}
