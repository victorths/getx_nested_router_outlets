import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_outlet/app/commons/presentation/navigation/app_pages.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        return Scaffold(
          body: GetRouterOutlet(
            initialRoute: Routes.signIn,
            anchorRoute: Routes.root,
            key: Get.nestedKey(Routes.root),
          ),
        );
      },
    );
  }
}
