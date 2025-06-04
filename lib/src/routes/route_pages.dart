// ignore_for_file: non_constant_identifier_names

import 'package:basic_bloc/src/presentation/screens/home_screen.dart';
import 'package:basic_bloc/src/presentation/screens/login_screen.dart';
import 'package:basic_bloc/src/presentation/screens/signup_screen.dart';
import 'package:basic_bloc/src/presentation/screens/wrapper.dart';
import 'package:basic_bloc/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/splash_screen.dart';

class RoutePages {
  static final ROUTER = GoRouter(routes: [
    GoRoute(
      path: Routes.SPLASH_ROUTE,
      name: Routes.SPLASH_ROUTE,
      pageBuilder: (context, state) =>
      const MaterialPage(child: SplashScreen(),),),
    GoRoute(
          path: Routes.LOGIN_ROUTE,
          name: Routes.LOGIN_ROUTE,
          pageBuilder: (context, state) =>
              const MaterialPage(child: LoginScreen(),),),
      GoRoute(
          path: Routes.REGISTER_ROUTE,
          name: Routes.REGISTER_ROUTE,
          pageBuilder: (context, state) =>
              const MaterialPage(child: SignupScreen(),),),

              ShellRoute(
        builder: (context, state, child) => Wrapper(child: child),
        routes: [
          GoRoute(
              path: Routes.HOME_ROUTE,
              name: Routes.HOME_ROUTE,
              pageBuilder: (context, state) =>
                  const MaterialPage(child: HomeScreen()))
        ],
      ),
  ]);
}
