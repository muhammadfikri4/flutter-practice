import 'package:flutter/material.dart';
import 'package:flutter_practice/core/routes/routers.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false, routerConfig: routers);
  }
}
