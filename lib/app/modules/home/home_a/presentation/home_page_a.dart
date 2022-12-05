import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_outlet/app/commons/presentation/navigation/app_pages.dart';

class HomePageA extends StatelessWidget {
  const HomePageA({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: (context, delegate, currentRoute) {
        return Scaffold(
          body: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // here the error occour, when i navigate to page C or D it replaces the homeA drawer
                    const Text(
                      'This is the HomeA "Drawer", must be held when navigating c and d routes.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => delegate.toNamed(Routes.c),
                      child: const Text('To route C'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => delegate.toNamed(Routes.d),
                      child: const Text('To route D'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: GetRouterOutlet(
                  initialRoute: Routes.c,
                  anchorRoute: Routes.homeA,
                  delegate: Get.rootDelegate,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
