import 'package:club_app/router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash Screen')),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final int indexTab;
  HomeScreen({super.key, this.indexTab = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: indexTab,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(tabs: [
            Tab(text: 'Clubs'),
            Tab(text: 'Chats'),
            Tab(text: 'Tasks'),
            Tab(text: 'News'),
          ]),
        ),
        body: TabBarView(
          children: const [
            ClubsScreen(),
            ChatsScreen(),
            TasksScreen(),
            NewsScreen(),
          ],
        ),
      ),
    );
  }
}

class ClubsScreen extends StatelessWidget {
  const ClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text('Clubs Screen')),
          FilledButton(
              onPressed: () {
                ChatDetailsRoute(chatId: "2542154").go(context);
              },
              child: Text("Open chat 2542154")),
        ],
      ),
    );
  }
}

class ClubDetailsScreen extends StatelessWidget {
  final String clubId;
  const ClubDetailsScreen({super.key, required this.clubId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Club Details Screen: $clubId')),
    );
  }
}

class ClubMembersScreen extends StatelessWidget {
  const ClubMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Club Members Screen')),
    );
  }
}

class ClubGroupsScreen extends StatelessWidget {
  const ClubGroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Club Groups Screen')),
    );
  }
}

class ClubGroupMembersScreen extends StatelessWidget {
  final String groupId;
  const ClubGroupMembersScreen({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Club Group Members Screen: $groupId')),
    );
  }
}

class ClubGroupRoomsScreen extends StatelessWidget {
  final String groupId;
  const ClubGroupRoomsScreen({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Club Group Rooms Screen: $groupId')),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final String roomId;
  const ChatScreen({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Chat Screen: $roomId')),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Chats Screen')),
    );
  }
}

class ChatDetailsScreen extends StatelessWidget {
  final String chatId;
  const ChatDetailsScreen({super.key, required this.chatId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Chat Details Screen: $chatId')),
    );
  }
}

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Tasks Screen')),
    );
  }
}

class TaskDetailsScreen extends StatelessWidget {
  final String taskId;
  const TaskDetailsScreen({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Task Details Screen: $taskId')),
    );
  }
}

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('News Screen')),
    );
  }
}

class NewsDetailsScreen extends StatelessWidget {
  final String newsId;
  const NewsDetailsScreen({super.key, required this.newsId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('News Details Screen: $newsId')),
    );
  }
}

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Activities Screen')),
    );
  }
}

class ActivityDetailsScreen extends StatelessWidget {
  final String activityId;
  const ActivityDetailsScreen({super.key, required this.activityId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Activity Details Screen: $activityId')),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Calendar Screen')),
    );
  }
}

class CalendarEventDetailsScreen extends StatelessWidget {
  final String eventId;
  const CalendarEventDetailsScreen({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Calendar Event Details Screen: $eventId')),
    );
  }
}

class CalendarDateScreen extends StatelessWidget {
  final String date;
  const CalendarDateScreen({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Calendar Date Screen: $date')),
    );
  }
}
