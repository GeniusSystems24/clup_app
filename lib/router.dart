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

@TypedGoRoute<ClubRoute>(path: '/', routes: [
  TypedGoRoute<MainAppHomeTabsRoute>(path: '/home', routes: [
    // المسار الرئيسي للتطبيق مع التبويبات الرئيسية
    TypedGoRoute<ClubHomeTabsViewRoute>(path: 'ClubHomeTabsView?id=:clubId', routes: [
      // المسار الخاص بالمجموعات الداخلية للنادي
      TypedGoRoute<ClubInternalGroupsPageViewRoute>(path: 'ClubInternalGroupsPageView', routes: [
        // المسار الخاص بالغرف داخل المجموعة
        TypedGoRoute<GroupRoomsScreenRoute>(path: 'GroupRoomsScreen?id=:groupId', routes: [
          // المسار الخاص بالدردشة داخل الغرفة
          TypedGoRoute<ChatScreenRoute>(path: 'ChatScreen?id=:roomId'),
        ]),
      ]),
    ]),
  ]),
])
// تعريفات الدوال المرتبطة بكل مسار
class ClubRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashScreen();
}

class MainAppHomeTabsRoute extends GoRouteData {
  final int index;
  MainAppHomeTabsRoute({this.index = 0});

  @override
  Widget build(BuildContext context, GoRouterState state) => MainAppHomeTabs(index: index);
}

class ClubHomeTabsViewRoute extends GoRouteData {
  final String clubId;
  ClubHomeTabsViewRoute({required this.clubId});

  @override
  Widget build(BuildContext context, GoRouterState state) => const ClubHomeTabsView();
}

class ClubInternalGroupsPageViewRoute extends GoRouteData {
  final String clubId;
  ClubInternalGroupsPageViewRoute({required this.clubId});

  @override
  Widget build(BuildContext context, GoRouterState state) => const ClubInternalGroupsPageView();
}

class GroupRoomsScreenRoute extends GoRouteData {
  final String clubId;
  final String groupId;
  GroupRoomsScreenRoute({required this.clubId, required this.groupId});

  @override
  Widget build(BuildContext context, GoRouterState state) => const GroupChatRoomsListScreen();
}

class ChatScreenRoute extends GoRouteData {
  final String clubId;
  final String groupId;
  final String roomId;
  ChatScreenRoute({required this.clubId, required this.groupId, required this.roomId});

  @override
  Widget build(BuildContext context, GoRouterState state) => const ChatScreenView();
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}

class MainAppHomeTabs extends StatelessWidget {
  static ValueNotifier<int> initialIndex = ValueNotifier<int>(0);
  MainAppHomeTabs({
    Key? key,
    int index = 0,
  }) : super(key: key) {
    initialIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: initialIndex,
        builder: (context, value, child) {
          return DefaultTabController(
            initialIndex: value,
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Main App Home Tabs'),
              ),
              body: Center(
                child: Text('Main App Home Tabs Content'),
              ),
            ),
          );
        });
  }
}

class ClubHomeTabsView extends StatelessWidget {
  const ClubHomeTabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Club Home Tabs View'),
      ),
      body: Center(
        child: Text('Club Home Tabs View Content'),
      ),
    );
  }
}

class ClubInternalGroupsPageView extends StatelessWidget {
  const ClubInternalGroupsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Club Internal Groups Page View'),
      ),
      body: Center(
        child: Text('Club Internal Groups Page View Content'),
      ),
    );
  }
}

class GroupChatRoomsListScreen extends StatelessWidget {
  const GroupChatRoomsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Chat Rooms List Screen'),
      ),
      body: Center(
        child: Text('Group Chat Rooms List Screen Content'),
      ),
    );
  }
}

class ChatScreenView extends StatelessWidget {
  const ChatScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen View'),
      ),
      body: Center(
        child: Text('Chat Screen View Content'),
      ),
    );
  }
}
