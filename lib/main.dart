import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/providers/app_provider.dart';
import 'package:mobile/screens/home.dart';
import 'package:mobile/screens/login.dart';
import 'package:mobile/screens/notification.dart';
import 'package:mobile/screens/post.dart';
import 'package:mobile/screens/post_comment.dart';
import 'package:mobile/screens/profile.dart';
import 'package:mobile/screens/setting.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => AppProvider(), child: MainApp()),
  );
}

final GoRouter _goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      redirect: (context, state) {
        // final bool isAuth = false;
        // if (!isAuth) {
        //   return '/login';
        // }
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'profile',
          builder: (context, state) => ProfileScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: 'setting',
              builder: (context, state) => SettingScreen(),
            ),
          ],
        ),
        GoRoute(
          path: 'notification',
          builder: (context, state) => NotificationScreen(),
        ),
        GoRoute(path: 'login', builder: (context, state) => LoginScreen()),
        GoRoute(
          path: 'post/:postId',
          builder: (context, state) {
            final postId = state.pathParameters['postId'] ?? '';
            return PostScreen(postId: postId);
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'comments',
              builder: (context, state) => PostCommentScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
  initialLocation: '/login',
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _goRouter);
  }
}
