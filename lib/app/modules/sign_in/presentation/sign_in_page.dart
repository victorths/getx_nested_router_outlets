import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_outlet/app/commons/presentation/navigation/app_pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('This is signInPage'),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () => Get.rootDelegate.toNamed(Routes.home),
              child: const Text('Go to homePage'),
            ),
          ],
        ),
      ),
    );
  }
}
