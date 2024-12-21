# club_app

A new Flutter project.

## Description

The `club_app` is a Flutter application designed to manage and interact with various clubs and their activities. The app provides a comprehensive set of features to handle clubs, members, groups, chats, tasks, news, activities, and calendar events.

تطبيق `club_app` هو تطبيق Flutter مصمم لإدارة والتفاعل مع مختلف الأندية وأنشطتها. يوفر التطبيق مجموعة شاملة من الميزات للتعامل مع الأندية، الأعضاء، المجموعات، الدردشات، المهام، الأخبار، الأنشطة، والفعاليات.

## Routes

### Main Routes الواجهة الئيسية وملحقاتها
- **Start:** `/`
- **Home:** `/home`

### Clubs and Related Features الاندية و ملحقاتها
- **Clubs:** `/home/club`
- **Club Details:** `/home/club/:clubId`
- **Club Members:** `/home/club/:clubId/members`
- **Club Groups:** `/home/club/:clubId/groups`
- **Club Group Members:** `/home/club/:clubId/groups/:groupId/members`
- **Club Group Rooms:** `/home/club/:clubId/groups/:groupId/rooms`
- **Club Group Room Chat:** `/home/club/:clubId/groups/:groupId/chat/:roomId`

### Chats and Related Features المحادثات وملحقاتها
- **Chats:** `/home/chats` (Types: individual, group, support, closed)
- **Chat Details:** `/home/chats/:chatId`

### Tasks and Related Features المهام وملحقاتها
- **Tasks:** `/home/tasks`
- **Task Details:** `/home/tasks/:taskId`

### News and Related Features الاخبار وملحقاتها
- **News:** `/home/news`
- **News Details:** `/home/news/:newsId`

### Activities and Related Features الانشطة وملحقاتها
- **Activities:** `/home/activities`
- **Activity Details:** `/home/activities/:activityId`

### Calendar and Related Features التقويم وملحقاتها
- **Calendar:** `/home/calendar`
- **Calendar Event Details:** `/home/calendar/:eventId`
- **Calendar Date:** `/home/calendar/:date`
