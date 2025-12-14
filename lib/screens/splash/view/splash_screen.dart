import 'package:base_flutter_bloc/base/routes/router/app_router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, AppRouter.homeRoute);
    });
    return Container(color: Colors.green);
  }
}

