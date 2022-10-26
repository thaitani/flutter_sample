// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_sample/page/home.dart';
import 'package:flutter_sample/page/test.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: 'Flutter Demo Home Page');
      },
    ),
    GoRoute(
      path: '/test',
      builder: (BuildContext context, GoRouterState state) {
        return const Test();
      },
    ),
  ],
);
