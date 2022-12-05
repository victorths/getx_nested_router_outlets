import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:poc_outlet/app/commons/presentation/navigation/app_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: ((context, delegate, currentRoute) {
        return Scaffold(
          appBar: AppBar(
            // This work properly
            title: const Text(
              'Home App Bar, must be held when navigating homeA and homeB routes and their subroutes',
            ),
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  switch (value) {
                    case 'HomeA':
                      delegate.toNamed(Routes.homeA);
                      break;
                    case 'HomeB':
                      delegate.toNamed(Routes.homeB);
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {'HomeA', 'HomeB'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          body: GetRouterOutlet(
            initialRoute: Routes.homeA,
            anchorRoute: Routes.home,
            delegate: Get.rootDelegate,
          ),
        );
      }),
    );
  }
}
