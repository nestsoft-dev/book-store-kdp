import 'package:flutter/material.dart';

import 'auth/login.dart';
import 'intro/onboarding.dart';

void main() {
  runApp(const MyApp());
}
/*

echo "# droppoint" >> README.md
to update code
git init
git add .
git commit -m "first commit"
git branch -M main

git push -u origin */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Books Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
