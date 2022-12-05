import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_outlet/app/commons/presentation/navigation/root_navigator.dart';
import 'package:poc_outlet/app/modules/home/home_a/presentation/home_page_a.dart';
import 'package:poc_outlet/app/modules/home/home_b/presentation/home_page_b.dart';
import 'package:poc_outlet/app/modules/home/presentation/home_page.dart';
import 'package:poc_outlet/app/modules/sign_in/presentation/sign_in_page.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: _Paths.root,
      participatesInRootNavigator: true,
      page: () => const RootPage(),
      children: [
        GetPage(
          name: _Paths.signIn,
          page: () => const SignInPage(),
        ),
        GetPage(
          name: _Paths.home,
          preventDuplicates: true,
          participatesInRootNavigator: true,
          page: () => const HomePage(),
          children: [
            GetPage(
              name: _Paths.homeA,
              participatesInRootNavigator: true,
              page: () => const HomePageA(),
              children: [
                GetPage(
                  name: _Paths.c,
                  page: () => const Center(child: Text('Page C')),
                ),
                GetPage(
                  name: _Paths.d,
                  page: () => const Center(child: Text('Page D')),
                ),
              ],
            ),
            GetPage(
              name: _Paths.homeB,
              page: () => const HomePageB(),
            ),
          ],
        ),
      ],
    ),
  ];
}
