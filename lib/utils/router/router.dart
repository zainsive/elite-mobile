import 'package:elite_commerce/modules/authentication/login/screens/login_screen.dart';
import 'package:elite_commerce/modules/authentication/register/screens/register_screen.dart';
import 'package:elite_commerce/modules/error/screens/error_screen.dart';
import 'package:elite_commerce/modules/main/chat/screens/chat_screen.dart';
import 'package:elite_commerce/modules/main/home/screens/home_screen.dart';
import 'package:elite_commerce/modules/main/profile/screens/profile_screen.dart';
import 'package:elite_commerce/utils/router/router_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static routerReturn({bool? isAuth}) {
    GoRouter router = GoRouter(
      initialLocation: isAuth == true ? '/home' : '/login',
      routes: [
        GoRoute(
          name: MyRouterConstants.loginRoute,
          path: '/login',
          pageBuilder: (context, state) {
            return const MaterialPage(child: LoginScreen());
          },
          routes: [
            GoRoute(
              name: MyRouterConstants.registerRoute,
              path: 'register',
              pageBuilder: (context, state) {
                return const MaterialPage(child: RegisterScreen());
              },
            ),
          ],
        ),
        GoRoute(
          name: MyRouterConstants.homeRoute,
          path: '/home',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomeScreen());
          },
          routes: [
            GoRoute(
              name: MyRouterConstants.chatRoute,
              path: 'chat',
              pageBuilder: (context, state) {
                return const MaterialPage(child: ChatScreen());
              },
            ),
            GoRoute(
              name: MyRouterConstants.profileRoute,
              path: 'profile',
              pageBuilder: (context, state) {
                return const MaterialPage(child: ProfileScreen());
              },
            )
          ],
        ),
      ],
      redirect: (context, state) {
        print(state.location);
      },
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorScreen());
      },
    );
    return router;
  }
}
